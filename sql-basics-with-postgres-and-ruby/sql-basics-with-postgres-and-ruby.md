We've seen the basics of how to use SQL to communicate with a PostgreSQL database using the `psql` tool, but how do we incorporate that into our Ruby
applications? In this article we'll look at how to interact with a PostgreSQL
database from our Ruby programs.

### Learning Goals

- Understand use of the Ruby `pg` gem.
- Interact with a PostgreSQL database from IRB.
- Understand how to interact with a PostgreSQL database from a Ruby program.
- Become familiar with user input sanitization to prevent SQL injection attacks.

### Set Up

Run the commands below to create a new database called `pet_db` and open a psql
session:

```no-highlight
et get sql-basics-with-postgres-and-ruby
cd sql-basics-with-postgres-and-ruby
bundle exec bundle install
createdb pet_db
psql pet_db
```

At the psql prompt, run the following to create a table within the database you just created:

```SQL
CREATE TABLE pets (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL
);
```

Add a few pets to your table with `INSERT INTO pets (name) VALUES ('your pet name here');`.

### SQL and Ruby

Before we can issue a SQL command we need to open a connection to the database
server. The `pg` gem is a Ruby library that enables us to communicate with a
PostgreSQL server. To install this gem, run the following command:

```no-highlight
gem install pg
```

Now we can try querying the database in an IRB session:

```no-highlight
> require "pg"
 => true

> connection = PG.connect(dbname: "pet_db")
 => #<PG::Connection>

> results = connection.exec("SELECT id, name FROM pets")
 => #<PG::Result>

 > results.to_a
 => [{"id"=>"1", "name"=>"Charles"},
     {"id"=>"2", "name"=>"Chloe"},
     {"id"=>"3", "name"=>"Thumbelina"}]

> connection.close
 => nil
```

First we have to load the library in memory using the `require "pg"` statement.
The `PG.connect` method will open a connection to the server which we can then
use to send SQL statements. When we call the `exec` method on the connection, we
pass in the SQL statement we want to execute and we're returned the results from
the server. The results are returned as a `PG::Result` object but it behaves
very similarly to an array of hashes, which we can see by calling the `to_a`
method. Whenever we're finished with a connection we'll want to close it (using
the `close` method).

IRB is nice, but what we really want is to be able to interact with our database
from our Ruby programs. To do this, we must follow the same general steps as above:

1. Require the pg gem: `require "pg"`.
2. Open a connection to our database: `connection = PG.connect(dbname: "database name").`
3. Issue our SQL commands.
4. Close the connection: `connection.close`.

Within a Ruby program, we'll generally be using our database connection frequently. Therefore, it makes sense to create our own method that handles automatically opening and closing a connection to the database:

```ruby
#server.rb

require "pg"

def db_connection
  begin
    connection = PG.connect(dbname: "pet_db")
    yield(connection)
  ensure
    connection.close
  end
end
```

The `PG.connect` and `connection.close` statements are typical method calls, but
what do the `yield(connection)` and `begin..ensure` statements do?

The `yield(connection)` statement allows this method to accept a block of code
(in the form of a `do..end` or `{..}` block) that can be run in the middle of
the method. If we wanted to use this method to query for a list of pets, we
might write something like:

```ruby
#server.rb

pets = nil

db_connection do |conn|
  pets = conn.exec("SELECT name FROM pets")
end

pets.to_a.each do |pet|
  puts pet["name"]
end
```

Notice how the `do..end` block accepts a single parameter: the `conn`
parameter is assigned the value passed into `yield(connection)`. Within this
block we can use the connection to query the database (by calling the `exec`
method).

Once this block of code is finished, execution picks up right after the `yield`
statement. We wrap up the method with an `ensure..end` block that closes out the
connection. The reason we use `ensure` is that this code is guaranteed to run:
even if an exception is thrown or something else goes wrong, the `ensure` block
will guarantee that the code for closing the connection will get run.

### User Input

The SQL statement we used to query all of the pets uses a fixed format: we just
ask for the name of all rows in the _pets_ table. In other cases our SQL will
contain parameters that will vary based on user input. Consider a statement to
insert a new pet based on user input:

```SQL
INSERT INTO pets (name) VALUES ('Tigger');
```

If a user typed _Tigger_ into an HTML form and submitted it, we could generate
the SQL statement using string interpolation in Ruby:

```ruby
# params["pet_name"] => "Tigger"
sql = "INSERT INTO pets (name) VALUES ('#{params["pet_name"]}')"
# => "INSERT INTO pets (name) VALUES ('Tigger')"

db_connection do |conn|
  conn.exec(sql)
end
```

This might work for most use cases, but what happens when the user types in
_O'Leary_:

```ruby
# params["pet_name"] => "O'Leary"
sql = "INSERT INTO pets (name) VALUES ('#{params["pet_name"]}')"
# => "INSERT INTO pets (name) VALUES ('O'Leary')"
# The extra quote breaks this SQL statement -----------^

db_connection do |conn|
  conn.exec(sql)
end
```

When we try to run this SQL statement our database will complain about an
invalid SQL statement. The single quote within _O'Leary_ closes the
string too early and breaks the statement.

At best our database refuses to run the statement because it is invalid SQL. At
worst an attacker can exploit this vulnerability to insert specially crafted SQL
fragments to run malicious code in our database. What would our SQL look like if
the user input `a'); DROP TABLE pets; --`. Note that `--` starts a comment in
SQL. This particular attack is known as [SQL
Injection](http://en.wikipedia.org/wiki/SQL_injection) and is a common malicious
attack performed on websites.

![Little Bobby Tables](https://imgs.xkcd.com/comics/exploits_of_a_mom.png)

[Source](https://xkcd.com/327/)

To prevent this we want to **sanitize** any input that we accept from users and
**escape** special characters like `'` so they don't interfere with the
structure of our SQL. We can use _placeholders_ within a query and then provide
values for those placeholders that get filtered for any malicious characters
before they are inserted into the statement. Think of the placeholders as a kind of variable. The `exec_params` method will
perform this filtering for us:

```ruby
db_connection do |conn|
  conn.exec_params("INSERT INTO pets (name) VALUES ($1)", [params["pet_name"]])
end
```

`exec_params` take two arguments:

1. The SQL query that we want to execute: `"INSERT INTO pets (name) VALUES ($1)"`
2. An array of information that we need to sanitize: `[params["pet_name"]]`
   We call this array our `params` array.
   (Don't get confused with Sinatra `params`, that `params` is a hash!)

The placeholder in the example above is the `$1` symbol.
This symbol gets replaced by the first argument in the params array when the SQL query gets executed.

If we needed to insert two pieces of data, we could place a `$2` symbol into the query, and then define a second element in the `params` array.

```ruby
db_connection do |conn|
  @pet = conn.exec_params(
    "INSERT INTO events (name, owner) VALUES ($1, $2)",
    [params["pet_name"], params["owner_name"]]
  )
end
```

_For more information on potential hacks and defenses, click [here](https://www.esecurityplanet.com/browser-security/prevent-web-attacks-using-input-sanitization.html)._

Let's look at how we might use PostgreSQL to store a list of pets in _server.rb_ file.
If we have a very simple pets site that displays our list of pets on an index page and allows us to enter pet names to add to the list, there would be two places in the _server.rb_ file where we would either read pets from or write pets to a file in the past:

```ruby
get "/pets" do
  # Reading from a file here...
  @pets = File.readlines("pets.txt")
  erb :index
end

post "/pets" do
  pet = params["pet_name"]

  # Writing to a file here...
  File.open("pets.txt", "a") do |file|
    file.puts(pet)
  end

  redirect "/pets"
end
```

To use a database instead of the file, we need to modify these two routes to read from and write to the _pet_db_ database instead of the _pets.txt_ file. We'll first need to include the **pg** gem and also define our helper method that will open and close the database connection
for us:

```ruby
# server.rb
require "sinatra"
require "pg"

set :bind, '0.0.0.0'  # bind to all interfaces

def db_connection
  begin
    connection = PG.connect(dbname: "pet_db")
    yield(connection)
  ensure
    connection.close
  end
end
```

Now in our `get "/pets"` and `post "/pets"` routes we can use our database
connection in place of the file:

```ruby
get "/pets" do
  # Retrieve the name of each pet from the database
  @pets = db_connection { |conn| conn.exec("SELECT name FROM pets") }
  erb :index
end

post "/pets" do
  pet = params["pet_name"]

  # Insert new pet into the database
  db_connection do |conn|
    conn.exec_params("INSERT INTO pets (name) VALUES ($1)", [pet])
  end

  redirect "/pets"
end
```

Now whenever a user submits a pet, it will be saved to our _pet_db_ database. One
difference with this code is that when we query for the list of pets we
actually get back an array of hashes instead of an array of strings:

```ruby
# Returns a PG::Result object which behaves like an array of hashes
@pets = db_connection { |conn| conn.exec("SELECT name FROM pets") }
```

We can either extract the pet names in the server or we can update our
_views/index.erb_ file to handle the new data type:

```erb
<ul>
  <% @pets.each do |pet| %>
    <li>
      <a href="/pets/<%= pet["id"] %>">
        <%= pet["name"] %>
      </a>
    </li>
  <% end %>
</ul>
```

_Navigate to http://localhost:4567/pets to see your list of pet names!_

Since `pet` is not a string but a Hash-like object, we extract the name by
referring to `pet["name"]`.

**NOTE:** We are using the `id` attribute to create the link.
Now that we are using a database, we want to use these ids because they are
guaranteed to be unique.

### In Summary

To use an RDBMS in our Ruby applications we can utilize the **pg** gem. To issue
a SQL statement we first have to open a **connection** to the database and then
submit the statement to be executed. The results of a query are returned as an
array of hashes. We must then close the **connection** when we are finished.

If a SQL statement contains user input it should be **sanitized** before being
sent to PostgreSQL. Unsanitized input can lead to **SQL injection** attacks that
enable malicious users to run arbitrary statements against our database.

### External Resources

- [PG Gem README](https://deveiate.org/code/pg/README_rdoc.html)
