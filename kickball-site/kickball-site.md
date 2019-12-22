You have been commissioned by the premier League of Cool Kickball Professionals (LACKP) to build their first website. Lucky you!

### Learning Objectives

* Build a Sinatra application to serve dynamically generated HTML
* Understand the role of the server, models, and views in a Sinatra application and how they interact

## Navigating the application

Before diving into this exercise, let's review the file structure, which may be unfamiliar.

##### Views
In our [Dynamic Web Pages with Sinatra][dynamic-web-pages-with-sinatra] reading, we generated HTML using ERB templates. However, we included the entirety of the HTML code in each of our ERB files that we put in our `views` folder, which meant we were repeating a lot of code, especially the entire `<head>` section.

In this assignment, we have minimized repetition by putting a `layout.erb` file in our `views` folder, which gives us the general structure and header of the HTML. Within this template, you will see a line that says `<%= yield %>`, which indicates to the file that it needs to find an additional ERB template to fill this space (whether it is an `index`, `show`, or other template). Based on your `server.rb` file, Sinatra will know to include the HTML outline from `layout.erb`, and fill in the appropriate HTML within the body.

##### Server
The `server.rb` is where you will be writing code to configure the logic for each of the paths a user visits. Specifically, this is where you will prepare the data needed for a specific webpage and specify which ERB template should be used. This will be the first step in setting up each webpage.

##### Models
You will need to access the files in the `models` folder in order to retrieve the team data for your website (for the first two user stories, you can start by accessing `models/league.rb`). Your `server.rb` file is already set up to require each of the files in `models` via `require_relative`, so that you can use those classes in your `server.rb`.

##### Views <--> Server
Once your `server.rb` file is set up, you will need to create your ERB templates for each page. Any new ERB templates you create should also be placed in the `views` folder. In order to visit a specific team's page, you can utilize the `params` hash to tell your `server.rb` file which team page to visit. Your app, however, should only have one generic path, `/team/:team_name` or `/team/:team` to access any team's show page.

##### Public
Unless you wish to configure JavaScript or styling, you will not need to edit the files in the `public` folder.

## Instructions
Tackle these user stories in the order that they're presented.

### Classes and Unit Testing

Write unit tests for the following classes and implement them. Files for both the models and the unit tests have been created for you (in `/models` and `/spec/models`, respectively). Be sure to write these tests prior to creating your classes.

##### `Player` class

##### To do
`Player` objects should be initialized with a `name` and `position`. These attributes should have reader methods associated with them.

#### `Team` class

##### To do
`Team` objects should be initialized with a `name` and player data (a hash of player positions and names). The constructor should instantiate a list of player objects.

{% show_hint %}

Use a `pry` at the top of your `initialize` method to remind yourself of what `player_data` looks like. How can you iterate through this data to turn it into a bunch of `Player` objects?

{% endshow_hint %}

##### Provided code
Once properly assigned in the constructor, the list of player objects will be
accessible via the `players` `attr_reader`.

Each `Team` has a `#motto` method that returns the team motto (this has already been set up for you).

#### `League` class
##### To do
Nothing! However, you should review the provided code, line by line, to ensure you understand what it's doing.
##### Provided code
* A `ROSTER` constant stores a hash of teams, player positions, and player names
* `League` objects are instantiated with a list of teams (as an array of Team objects).

**Walk yourself through what happens when you create a league:**

  * What objects are instantiated? What effect does the instantiation of those objects have?

    {% show_hint %}

     Looking at the `initialize` method for the Team class, we see that instantiating Teams instantiates some Players.

    {% endshow_hint %}

  * With this logic in place, how many lines of code in your `server.rb` will you need to create all the league, team, and player objects you'll need?**

    {% show_hint %}

    Just one -- `League.new` will create all the Team and Player objects you need!

    {% endshow_hint %}

## Features

The application should satisfy the following user stories. Be sure to utilize the classes you created above!

{% show_hint %}

There are several ways you could accomplish these features. One suggestion:

1. Create a view (erb file) for the webpage you need with dummy text.
* Modify your server so that this route renders the new view you've created.
* Start your server and navigate to the path you've defined for this view in the server (e.g., `/teams`). Make sure you're seeing the dummy text, verifying that your route and view file are properly connected.
* Identify the information the view will need and make it available to the view in the server (e.g., `@league`). Use a `pry` before your `erb` line to ensure that the variables you're passing to the view contain the expected information.
* Replace the dummy text in the view file with the information you wish to display. Reload your page in the browser to ensure that you're seeing the expected result

Note that if you were supplied with feature tests (e.g., `/features/teams_spec.rb`), you should run those at the beginning of the process and then again whenever you think you've fulfilled one of their criteria. **TDD FTW!**

{% endshow_hint %}

Acceptance Criteria:
* When I visit `/teams` I can see list of all the team names
* This list should link to individual team pages (these pages can be blank for now; they will be populated in the next user story)

```no-highlight
As a kickball fan
I want to view a page with the names of each team
So that I can learn which teams are in the league
```


---
Acceptance Criteria:

* I can navigate to a distinct url and web page for each team
* Each team page displays the team's name and motto
* Each team page displays each player's name and position
* Given that I am on the `/teams` page, I can get to a specific team's page by clicking on the name of the team

```no-highlight
As a kickball fan
I want to view the professional teams
So that I can learn more about the players
```

###### Note on spaces in URLs
URLs _can_ contain spaces, but they generally shouldn't. You can replace the spaces in the string with underscores or hyphens (see [here](https://magenticians.com/dash-or-underscore-preferred-in-urls/) for some of the pros and cons of each). You could make this replacement using the `gsub` (*g*lobal *sub*stitution) Ruby method, e.g., `string_hyphenified = my_spacey_string.gsub(' ', '-')`.

---

### Optional Challenges
Implement features that satisfy the following user stories:

Acceptance Criteria:

* When I visit `/positions` I should be able to see list of all the positions.

```no-highlight
As a kickball fan
I want to view a page with the names of each position
So that I can learn what positions there are on a team
```


---
Acceptance Criteria:

* I can navigate to a distinct url for each position
* Each position page displays the position
* Each position page lists each player in that position along with their team name
* Given that I am on the `/positions` page, I can get to this page by clicking on the name of the position

```no-highlight
As a kickball fan
I want to see all players in a certain position
So that I can see who plays each position in the league
```



[dynamic-web-pages-with-sinatra]: https://learn.launchacademy.com/lessons/dynamic-web-pages-with-sinatra
