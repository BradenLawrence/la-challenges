--
-- Remove tables, if they exist
--

DROP TABLE IF EXISTS actors CASCADE;
DROP TABLE IF EXISTS genres CASCADE;
DROP TABLE IF EXISTS movies CASCADE;
DROP TABLE IF EXISTS cast_members CASCADE;

--
-- Define the database schema
--

CREATE TABLE actors(
  id SERIAL PRIMARY KEY,
  name VARCHAR(255)
);

CREATE TABLE genres(
  id SERIAL PRIMARY KEY,
  name VARCHAR(255)
);

CREATE TABLE movies(
  id SERIAL PRIMARY KEY,
  title VARCHAR(255),
  year INTEGER,
  genre_id INTEGER REFERENCES genres(id)
);

CREATE TABLE cast_members(
  movie_id INT REFERENCES movies(id),
  actor_id INT REFERENCES actors(id),
  character VARCHAR(255)
);

--
-- Populate tables with data
--

INSERT INTO actors (name)
VALUES
  ('Al Pacino'),
  ('Dennis Hopper'),
  ('Diane Keaton'),
  ('Marlon Brando'),
  ('Robert Duvall'),
  ('Sigourney Weaver'),
  ('Tim Allen'),
  ('Tom Hanks'),
  ('Woody Allen');

INSERT INTO genres (name)
VALUES
  ('Action'),
  ('Comedy'),
  ('Drama'),
  ('Animation');

INSERT INTO movies (title, year, genre_id)
VALUES
  ('Aliens',         1986, (SELECT id FROM genres WHERE name = 'Action' LIMIT 1)),
  ('Annie Hall',     1977, (SELECT id FROM genres WHERE name = 'Comedy' LIMIT 1)),
  ('Apocalypse Now', 1979, (SELECT id FROM genres WHERE name = 'Drama' LIMIT 1)),
  ('The Godfather',  1972, (SELECT id FROM genres WHERE name = 'Drama' LIMIT 1)),
  ('Toy Story 2',    1999, (SELECT id FROM genres WHERE name = 'Animation' LIMIT 1));

INSERT INTO cast_members (movie_id, actor_id, character)
VALUES
  (
    (SELECT id FROM movies WHERE title = 'Aliens' LIMIT 1),
    (SELECT id FROM actors WHERE name = 'Sigourney Weaver' LIMIT 1),
    'Ellen Ripley'
  ),
  (
    (SELECT id FROM movies WHERE title = 'Annie Hall' LIMIT 1),
    (SELECT id FROM actors WHERE name = 'Diane Keaton' LIMIT 1),
    'Annie Hall'
  ),
  (
    (SELECT id FROM movies WHERE title = 'Annie Hall' LIMIT 1),
    (SELECT id FROM actors WHERE name = 'Woody Allen' LIMIT 1),
    'Alvy Singer'
  ),
  (
    (SELECT id FROM movies WHERE title = 'Apocalypse Now' LIMIT 1),
    (SELECT id FROM actors WHERE name = 'Dennis Hopper' LIMIT 1),
    'Photo Journalist'
  ),
  (
    (SELECT id FROM movies WHERE title = 'Apocalypse Now' LIMIT 1),
    (SELECT id FROM actors WHERE name = 'Marlon Brando' LIMIT 1),
    'Colonel Kurtz'
  ),
  (
    (SELECT id FROM movies WHERE title = 'Apocalypse Now' LIMIT 1),
    (SELECT id FROM actors WHERE name = 'Robert Duvall' LIMIT 1),
    'Lt. Col. Kilgore'
  ),
  (
    (SELECT id FROM movies WHERE title = 'The Godfather' LIMIT 1),
    (SELECT id FROM actors WHERE name = 'Al Pacino' LIMIT 1),
    'Michael Corleone'
  ),
  (
    (SELECT id FROM movies WHERE title = 'The Godfather' LIMIT 1),
    (SELECT id FROM actors WHERE name = 'Diane Keaton' LIMIT 1),
    'Kay Adams'
  ),
  (
    (SELECT id FROM movies WHERE title = 'The Godfather' LIMIT 1),
    (SELECT id FROM actors WHERE name = 'Marlon Brando' LIMIT 1),
    'Don Vito Corleone'
  ),
  (
    (SELECT id FROM movies WHERE title = 'The Godfather' LIMIT 1),
    (SELECT id FROM actors WHERE name = 'Robert Duvall' LIMIT 1),
    'Tom Hagen'
  ),
  (
    (SELECT id FROM movies WHERE title = 'Toy Story 2' LIMIT 1),
    (SELECT id FROM actors WHERE name = 'Tim Allen' LIMIT 1),
    'Buzz Lightyear'
  ),
  (
    (SELECT id FROM movies WHERE title = 'Toy Story 2' LIMIT 1),
    (SELECT id FROM actors WHERE name = 'Tom Hanks' LIMIT 1),
    'Woody'
  );
