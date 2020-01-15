# Brussels Sprouts Recipe Blog with Validations

Time to validate our Brussels Sprouts recipes in our blog.

## Learning Goals
* Write migrations to create and modify tables
* Create both model- and database-level validations to ensure that only valid data are stored in our database

## Setup
Run the following commands to download the starter code, set up the app, and create the database.

```no-highlight
et get ar-validations
cd ar-validations

bundle exec bundle install
bundle exec rake db:create
```

## Instructions

Let's create a Brussels Sprouts recipe blog! We want to validate the recipes and comments that might be added to our blog. A few notes:

* As you create the validations below, run `pry -r ./server.rb` to enter a pry session that can access the server.
* You should be able to add recipes and comments from the command line. Any recipe or comment that fails your validations should not persist to the database.

#### Validations
###### Recipes
* Create a `Recipe` class and a migration that will create a table for brussels sprouts `recipes`.
* The `title` of each recipe should be **unique**, **not null**, and contain the string "brussels sprouts".

###### Recipe Comments
* Create a `Comment` class and a migration that will create a `comments` table. Each `comment` should belong to a `recipe`.
* Each comment should be no more than 140 characters long.

##### Recipe Servings
Whoops! We forgot to include the number of servings our recipe prepares!
* Write a migration to add a `servings` column to our `recipes` table and update your model as necessary.
* The number of servings should be optional, but if supplied, it should be greater than or equal to 1.
