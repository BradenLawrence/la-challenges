Most applications require handling different types of information that are often related in one form or another. In this article we look at several of those types of relationships and how we can model them in a relational database.

### Learning Goals

- Identify different types of information within a database
- Extract information into separate tables to minimize redundant data
- Link tables together using **primary keys** and **foreign keys** to define a **one-to-many** relationship
- Understand how **many-to-many** relationships are implemented using join tables

_Note_: We'll be working exclusively in the terminal in this article, not a text editor.

To follow along with this lesson, run

```no-highlight
et get database-relationships
cd database-relationships
dropdb movies
createdb movies
psql movies
```

The SQL commands to reconstruct the database will be listed within each section
(e.g., `\i movies-part-1.sql`).

### Structuring Information

Let's start by importing from our .sql file into our psql database:

```no-highlight
movies=# \i movies-part-1.sql
```

(If you're curious, you can open up this `.sql` file to see how we can store SQL commands in a text file, which we then execute in the terminal.)

Now, consider the following table of movies and the actors:

```SQL
SELECT * FROM movies;
```

```no-highlight
Movie Title    | Year | Actor            | Character          | Genre
---------------+------+------------------+--------------------+------------
Aliens         | 1986 | Sigourney Weaver | Ellen Ripley       | Action
Annie Hall     | 1977 | Diane Keaton     | Annie Hall         | Comedy
Annie Hall     | 1977 | Woody Allen      | Alvy Singer        | Comedy
Apocalypse Now | 1979 | Dennis Hopper    | Photo Journalist   | Drama
Apocalypse Now | 1979 | Marlon Brando    | Colonel Kurtz      | Drama
Apocalypse Now | 1979 | Robert Duvall    | Lt. Col. Kilgore   | Drama
The Godfather  | 1972 | Al Pacino        | Michael Corleone   | Drama
The Godfather  | 1972 | Diane Keaton     | Kay Adams          | Drama
The Godfather  | 1972 | Marlon Brando    | Don Vito Corleone  | Drama
The Godfather  | 1972 | Robert Duvall    | Tom Hagen          | Drama
Toy Story 2    | 1999 | Tim Allen        | Buzz Lightyear     | Animation
Toy Story 2    | 1999 | Tom Hanks        | Woody              | Animation
```

Here we include the name of the movie, the year it was released, a few actors
and the characters they played, as well as the genre of the movie. This sampling
of data could be a part of a much larger database.

Now, consider a query to list all movies starring Diane Keaton. To answer this,
we can scan the table and pick out any rows where Diane Keaton appears in the
actors column:

```no-highlight
Annie Hall     | 1977 | Diane Keaton     | Annie Hall         | Comedy
The Godfather  | 1972 | Diane Keaton     | Kay Adams          | Drama
```

The format of the table makes this query easy to answer. Each row corresponds to
a separate movie starring Diane Keaton.

How about a query to list all of the genres? For this, we can similarly scan the
table and check the genre column, but on a first pass we end up with many
duplicate entries:

```SQL
SELECT genre FROM movies;
```

```no-highlight
Action
Comedy
Comedy
Drama
Drama
Drama
Drama
Drama
Drama
Drama
Animation
Animation
```

We found four genres, but we ended up with twelve rows since each line has a
genre (even if it's a duplicate). It's not that difficult to fix though: we can
make a second pass and filter out any genres we've seen before:

```SQL
SELECT DISTINCT genre FROM movies;
```

```no-highlight
Action
Comedy
Drama
Animation
```

What if we wanted to list all movies that have [no actors](http://en.wikipedia.org/wiki/Empire_%281964_film%29)?
This query is a bit more perplexing. All of the movies in our sample have actors
so we wouldn't find anything there, but how would we even represent this? We
just want to store the title, year, and genre without any info for the actor or
character. One strategy would be to leave these columns blank:

```no-highlight
Movie Title    | Year | Actor      | Character   | Genre
---------------+------+------------+-------------+--------------
Empire         | 1964 |            |             | Avante-garde
```

This works but the actor and character columns are irrelevant here. They are
only added as placeholders to avoid breaking the format of the rest of the data.
Think about how this would work if we wanted to count the number of actors in a
movie?

Things become more challenging when we consider adding more information to our
database. Where would be the best place to add a description for each movie? We
could add another column to the table but if a movie has multiple rows (one per
actor) then which row contains the description?

```no-highlight
Movie Title   | Year | Description           | Actor
--------------+------+-----------------------+---------------
The Godfather | 1972 | description goes here | Al Pacino
The Godfather | 1972 | and here...           | Diane Keaton
The Godfather | 1972 | and here...           | Marlon Brando
The Godfather | 1972 | and here too...       | Robert Duvall
```

How about reviews for movies? We could add another column for reviews, but we
run into the same problem as before. Which row contains the review, or should we
duplicate it among all rows for that particular movie? What if there are
multiple reviews for a given movie? What if there are no reviews?

### Normalization

A single table works well when we're dealing with a single type of information.
If we had a list of tasks to complete, a single table with a task per row works
great.

This structure starts to break down when we are dealing with multiple types of
information. Trying to cram everything into a single table becomes cumbersome
and results in lots of duplication. If we want to remain flexible in how we can
query and maintain our database, it becomes useful to split the different types
of information into separate tables.

This process of splitting our information into separate tables to minimize
duplication is known as **normalization**. In addition to saving space,
reducing duplication often means having a single row to represent any
particular entity (e.g., each movie would have only one row that defines the
existence of that movie and its attributes). This makes it simpler to identify
where new information should be stored and how to structure our queries.

### How to Normalize Data and Construct Tables

Our table currently consists of a movie title and year, actors and the characters they portrayed, and
the movie genre. How might we normalize this data?

One strategy is to look for **duplicate values**. For example, many of the records in our table have
the same genre value, which makes sense because one genre can correspond to multiple movies. (In our table,
each movie only has one genre.)

Moreover, we know that a genre can exist without a movie -- our database might
not contain any documentaries yet, but that doesn't mean the genre doesn't exist. Having a separate
genres table will allow us to add new genres before we have to add a movie containing them.

Let's look at our movies table:

```no-highlight
title          | year | actor            | character          | genre
---------------+------+------------------+--------------------+-----------
Aliens         | 1986 | Sigourney Weaver | Ellen Ripley       | Action
Annie Hall     | 1977 | Diane Keaton     | Annie Hall         | Comedy
Annie Hall     | 1977 | Woody Allen      | Alvy Singer        | Comedy
Apocalypse Now | 1979 | Dennis Hopper    | Photo Journalist   | Drama
Apocalypse Now | 1979 | Marlon Brando    | Colonel Kurtz      | Drama
Apocalypse Now | 1979 | Robert Duvall    | Lt. Col. Kilgore   | Drama
The Godfather  | 1972 | Al Pacino        | Michael Corleone   | Drama
The Godfather  | 1972 | Diane Keaton     | Kay Adams          | Drama
The Godfather  | 1972 | Marlon Brando    | Don Vito Corleone  | Drama
The Godfather  | 1972 | Robert Duvall    | Tom Hagen          | Drama
Toy Story 2    | 1999 | Tim Allen        | Buzz Lightyear     | Animation
Toy Story 2    | 1999 | Tom Hanks        | Woody              | Animation
```

If we wanted to separate **genres** into a new table, it might look something like:

```no-highlight
movies=# \i movies-part-2.sql
```

```SQL
SELECT * FROM genres;
```

```no-highlight
id | name
---+-----------
1  | Action
2  | Comedy
3  | Drama
4  | Animation
```

We extracted the name of each genre so that it only occupies a single row. This
table is now the definitive location to find information on genres. We don't
have any duplicate rows or redundant data here.

Notice how we also have an ID column. This column is known as the **primary
key** of the table. A primary key is unique within a table (only one `genre` record
will have an id of 5) and enables us to identify a record within a table easily and unambiguously.
For example, using a primary key ensures that we don't confuse the Hitchcock masterpiece
`Notorious` with the Biggie Smalls biopic of the same name.
Primary keys do not necessarily need to be integers, but they should
always be able to uniquely identify a particular row.

One other benefit of having a definitive source for genres is that we might
want to add additional information to the table at some point (e.g. a
description of the genre). Since each genre exists as its own row, it's simple to add
a new column without any duplication:

```no-highlight
id | name      | description
---+-----------+--------------------
1  | Action    | lots of explosions
2  | Comedy    | roflmaololol
3  | Drama     | lots of tears
4  | Animation | lots of CGI
```

### One-to-Many Relationships

We've extracted genres into a separate table, but we now need a way to connect our movies and our genres,
so that we can indicate which movies are of which genres.
Luckily, we can create a relationship between the two tables using **primary keys** and **foreign keys**.

Let's replace the `genre` column in our `movies` table with a new column, `genre_id`. This column is going
to contain the id of the record in the `genre` table that corresponds to the movie's genre:

```no-highlight
title          | year | actor            | character          | genre_id
---------------+------+------------------+--------------------+-----------
Aliens         | 1986 | Sigourney Weaver | Ellen Ripley       | 1
Annie Hall     | 1977 | Diane Keaton     | Annie Hall         | 2
Annie Hall     | 1977 | Woody Allen      | Alvy Singer        | 2
Apocalypse Now | 1979 | Dennis Hopper    | Photo Journalist   | 3
Apocalypse Now | 1979 | Marlon Brando    | Colonel Kurtz      | 3
Apocalypse Now | 1979 | Robert Duvall    | Lt. Col. Kilgore   | 3
The Godfather  | 1972 | Al Pacino        | Michael Corleone   | 3
The Godfather  | 1972 | Diane Keaton     | Kay Adams          | 3
The Godfather  | 1972 | Marlon Brando    | Don Vito Corleone  | 3
The Godfather  | 1972 | Robert Duvall    | Tom Hagen          | 3
Toy Story 2    | 1999 | Tim Allen        | Buzz Lightyear     | 4
Toy Story 2    | 1999 | Tom Hanks        | Woody              | 4
```

This `genre_id` column is known as a **foreign key** in that it references a
primary key from another table, _linking_ two rows together.

Let's think about the relationship between genres and movies. There are several
movies that belong to the same genre (e.g. both _Apocalypse Now_ and _The
Godfather_ are listed as dramas) but it is not possible for a movie to have
more than one genre (as we've modeled it here).

![Image of the one-to-many relationship between genres and movies](https://s3.amazonaws.com/horizon-production/images/OneManyRelations.png)

This is referred to as a **one-to-many** relationship: a genre can have many
movies, but a movie belongs to a single
genre. Whichever table contains the foreign key (`genre_id` in this case)
**belongs to** the other table and the other table **has many** of the former.

How do we use SQL to create this database design? We can create the movies and
genres tables as outlined below. Notice that both tables have a primary key but only
the movies table has a foreign key column. Whenever you have an `X can have many Ys`,
the foreign key column is always on the `many` side (the table for `Y`).

```SQL
CREATE TABLE genres(
  id SERIAL PRIMARY KEY,
  name VARCHAR(255)
);

CREATE TABLE movies(
  id SERIAL PRIMARY KEY,
  title VARCHAR(255),
  year INTEGER,
  actor VARCHAR(255),
  character VARCHAR(255),
  genre_id INTEGER REFERENCES genres(id)
);
```

The `references` keyword looks for the table and column for the foreign key to
complete the relationship.

### Many-to-Many Relationships

To follow along, run

```no-highlight
movies=# \i movies-part-3.sql
```

Let's continue normalizing our movies table:

```no-highlight
title          | year | actor            | character          | genre_id
---------------+------+------------------+--------------------+-----------
Aliens         | 1986 | Sigourney Weaver | Ellen Ripley       | 1
Annie Hall     | 1977 | Diane Keaton     | Annie Hall         | 2
Annie Hall     | 1977 | Woody Allen      | Alvy Singer        | 2
Apocalypse Now | 1979 | Dennis Hopper    | Photo Journalist   | 3
Apocalypse Now | 1979 | Marlon Brando    | Colonel Kurtz      | 3
Apocalypse Now | 1979 | Robert Duvall    | Lt. Col. Kilgore   | 3
The Godfather  | 1972 | Al Pacino        | Michael Corleone   | 3
The Godfather  | 1972 | Diane Keaton     | Kay Adams          | 3
The Godfather  | 1972 | Marlon Brando    | Don Vito Corleone  | 3
The Godfather  | 1972 | Robert Duvall    | Tom Hagen          | 3
Toy Story 2    | 1999 | Tim Allen        | Buzz Lightyear     | 4
Toy Story 2    | 1999 | Tom Hanks        | Woody              | 4
```

It's clear that we're duplicating the movie information as we see the same
title and year combination appear multiple times. We also have duplicate actor
information: Diane Keaton, Marlon Brandon, and Robert Duvall all appear in more
than one row. The catch here is that they portray different characters in each
movie.

Let's start by separating movies and actors. It seems straightforward that
movies and actors are two separate entities, but we need to figure out how to
split up the columns in our existing table. Movies will most likely contain the
title, year, and genre:

```no-highlight
id | title          | year | genre_id
---+----------------+------+-----------
1  | Aliens         | 1986 | 1
2  | Annie Hall     | 1977 | 2
3  | Apocalypse Now | 1979 | 3
4  | The Godfather  | 1972 | 3
5  | Toy Story 2    | 1999 | 4
```

If we use the remainder of the data for the actors table, we end up with:

```no-highlight
id | actor            | character
---+------------------+-------------------
1  | Al Pacino        | Michael Corleone
2  | Dennis Hopper    | Photo Journalist
3  | Diane Keaton     | Annie Hall
4  | Diane Keaton     | Kay Adams
5  | Marlon Brando    | Colonel Kurtz
6  | Marlon Brando    | Don Vito Corleone
7  | Robert Duvall    | Lt. Col. Kilgore
8  | Robert Duvall    | Tom Hagen
9  | Sigourney Weaver | Ellen Ripley
10 | Tim Allen        | Buzz Lightyear
11 | Tom Hanks        | Woody
12 | Woody Allen      | Alvy Singer
```

There's still some duplication here -- several actors appear more than once if
they were in more than one movie. We could delete those extra rows, but we lose
information about the character they portrayed. If we keep the extra rows, we no
longer have a single, unambiguous record for each actor (is Diane Keaton actor
ID 3 or 4)?

Let's rethink this a little. We now know how to handle one-to-many relationships,
but the relationship between movies and actors is different. A movie can have many
actors, but an actor can also star in many movies. This can be modeled using a
**many-to-many** relationship.

![Image of the many-to-many relationship between genres and movies](https://s3.amazonaws.com/horizon-production/images/ManyManyRelations.png)

Both sides of a many-to-many relationship usually have entities that
can exist independently. We might have a movie with no actors or an actor that
hasn't starred in any of the movies in our database. But we
also can't restrict a movie to having one actor or an actor to starring in one
movie, so adding an `actor_id` or `movie_id` column to either table won't work
(since it can only reference a single row).

The solution is to include a third table that links records from both tables
together. This is known as a **join table** and is necessary to model a
many-to-many relationship. At a minimum, a join table needs to include a
foreign key of both tables it is trying to join. Let's see what our modified
movies and actors table look like with our join table:

```SQL
SELECT * FROM movies;
```

```no-highlight
---+----------------+------+-----------
id | title          | year | genre_id
---+----------------+------+-----------
1  | Aliens         | 1986 | 1
2  | Annie Hall     | 1977 | 2
3  | Apocalypse Now | 1979 | 3
4  | The Godfather  | 1972 | 3
5  | Toy Story 2    | 1999 | 4
```

```SQL
SELECT * FROM actors;
```

```no-highlight
---+-----------------
id | name
---+-----------------
1  | Al Pacino
2  | Dennis Hopper
3  | Diane Keaton
4  | Marlon Brando
5  | Robert Duvall
6  | Sigourney Weaver
7  | Tim Allen
8  | Tom Hanks
9  | Woody Allen
```

```SQL
SELECT movie_id, actor_id FROM cast_members;
```

```no-highlight
--  "join table"
---------+----------
movie_id | actor_id
---------+----------
 1       | 6
 2       | 3
 2       | 9
 3       | 2
 3       | 4
 3       | 5
 4       | 1
 4       | 3
 4       | 4
 4       | 5
 5       | 7
 5       | 8
```

**A join table exists to link two or more tables together**. Each row represents
the coupling between an actor and movie, i.e. a movie that the actor starred in.
To model this in our schema we would use the same references key word for both
columns.

```SQL
CREATE TABLE cast_members(
  movie_id INT REFERENCES movies(id),
  actor_id INT REFERENCES actors(id)
);
```

You might notice we lost a bit of information in the translation. Since
our actors table only contains one row per actor we had to drop the name of the
character they portrayed. This information doesn't really belong on the actors
table since it is dependent on the movie, nor does it really belong on the
movies table since it is dependent on the actor. The best location would be the
join table since it is the coupling of the two tables:

```SQL
SELECT * FROM cast_members;
```

```no-highlight
---------+----------+--------------
movie_id | actor_id | character
---------+----------+--------------
 1       | 6        | Ellen Ripley
 2       | 3        | Annie Hall
 2       | 9        | Alvy Singer
 3       | 2        | Photo Journalist
 3       | 4        | Colonel Kurtz
 3       | 5        | Lt. Col. Kilgore
 4       | 1        | Michael Corleone
 4       | 3        | Kay Adams
 4       | 4        | Don Vito Corleone
 4       | 5        | Tom Hagen
 5       | 7        | Buzz Lightyear
 5       | 8        | Woody
```

Sometimes join tables exist to link two tables together and nothing more, but
in other cases they also store **additional information**. Here we're using the join
table to attach more information about the coupling of an actor to a movie,
specifically what role they played.

### In Summary

Creating relationships among our tables allows us to simplify or **normalize**
our data. Two types of relationships we can create are a **one-to-many** or a
**many-to-many**. These relationships help us associate our data and then query
it in more efficient ways.
