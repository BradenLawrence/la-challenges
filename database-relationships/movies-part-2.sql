--
-- Remove tables, if they exist
--

DROP TABLE IF EXISTS genres CASCADE;
DROP TABLE IF EXISTS movies CASCADE;

--
-- Define the database schema
--

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

--
-- Populate tables with data
--

INSERT INTO genres (name)
VALUES
  ('Action'),
  ('Comedy'),
  ('Drama'),
  ('Animation');

INSERT INTO movies (title, year, actor, character, genre_id)
VALUES
  ('Aliens',         1986, 'Sigourney Weaver', 'Ellen Ripley',      (SELECT id FROM genres WHERE name = 'Action' LIMIT 1)),
  ('Annie Hall',     1977, 'Diane Keaton',     'Annie Hall',        (SELECT id FROM genres WHERE name = 'Comedy' LIMIT 1)),
  ('Annie Hall',     1977, 'Woody Allen',      'Alvy Singer',       (SELECT id FROM genres WHERE name = 'Comedy' LIMIT 1)),
  ('Apocalypse Now', 1979, 'Dennis Hopper',    'Photo Journalist',  (SELECT id FROM genres WHERE name = 'Drama' LIMIT 1)),
  ('Apocalypse Now', 1979, 'Marlon Brando',    'Colonel Kurtz',     (SELECT id FROM genres WHERE name = 'Drama' LIMIT 1)),
  ('Apocalypse Now', 1979, 'Robert Duvall',    'Lt. Col. Kilgore',  (SELECT id FROM genres WHERE name = 'Drama' LIMIT 1)),
  ('The Godfather',  1972, 'Al Pacino',        'Michael Corleone',  (SELECT id FROM genres WHERE name = 'Drama' LIMIT 1)),
  ('The Godfather',  1972, 'Diane Keaton',     'Kay Adams',         (SELECT id FROM genres WHERE name = 'Drama' LIMIT 1)),
  ('The Godfather',  1972, 'Marlon Brando',    'Don Vito Corleone', (SELECT id FROM genres WHERE name = 'Drama' LIMIT 1)),
  ('The Godfather',  1972, 'Robert Duvall',    'Tom Hagen',         (SELECT id FROM genres WHERE name = 'Drama' LIMIT 1)),
  ('Toy Story 2',    1999, 'Tim Allen',        'Buzz Lightyear',    (SELECT id FROM genres WHERE name = 'Animation' LIMIT 1)),
  ('Toy Story 2',    1999, 'Tom Hanks',        'Woody',             (SELECT id FROM genres WHERE name = 'Animation' LIMIT 1));
