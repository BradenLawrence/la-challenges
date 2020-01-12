--
-- Remove tables, if they exist
--

DROP TABLE IF EXISTS movies CASCADE;

--
-- Define the database schema
--

CREATE TABLE movies (
  id SERIAL PRIMARY KEY,
  title VARCHAR(255),
  year INTEGER,
  actor VARCHAR(255),
  character VARCHAR(255),
  genre VARCHAR(255)
);

--
-- Populate tables with data
--

INSERT INTO movies (title, year, actor, character, genre)
VALUES
  ('Aliens',         1986, 'Sigourney Weaver', 'Ellen Ripley',      'Action'),
  ('Annie Hall',     1977, 'Diane Keaton',     'Annie Hall',        'Comedy'),
  ('Annie Hall',     1977, 'Woody Allen',      'Alvy Singer',       'Comedy'),
  ('Apocalypse Now', 1979, 'Dennis Hopper',    'Photo Journalist',  'Drama'),
  ('Apocalypse Now', 1979, 'Marlon Brando',    'Colonel Kurtz',     'Drama'),
  ('Apocalypse Now', 1979, 'Robert Duvall',    'Lt. Col. Kilgore',  'Drama'),
  ('The Godfather',  1972, 'Al Pacino',        'Michael Corleone',  'Drama'),
  ('The Godfather',  1972, 'Diane Keaton',     'Kay Adams',         'Drama'),
  ('The Godfather',  1972, 'Marlon Brando',    'Don Vito Corleone', 'Drama'),
  ('The Godfather',  1972, 'Robert Duvall',    'Tom Hagen',         'Drama'),
  ('Toy Story 2',    1999, 'Tim Allen',        'Buzz Lightyear',    'Animation'),
  ('Toy Story 2',    1999, 'Tom Hanks',        'Woody',             'Animation');
