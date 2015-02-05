DROP TABLE IF EXISTS artists;
DROP TABLE IF EXISTS paintings;

CREATE TABLE artists (
  id SERIAL PRIMARY KEY,
  name VARCHAR (80) NOT NULL,
  nationality VARCHAR (30) NOT NULL
);

CREATE TABLE paintings (
  id SERIAL PRIMARY KEY,
  title VARCHAR UNIQUE
);

INSERT INTO artists
  (name, nationality)
VALUES
  ('Vincent Van Gogh', 'Dutch'),
  ('Pablo Picasso', 'Spanish'),
  ('Katsushika Hokusai', 'Japanese');

INSERT INTO paintings
  (title)
VALUES
  ('Starry Night'),
  ('Cafe Terrace at Night'),
  ('Guernica'),
  ('The Old Guitarist'),
  ('The Great Wave off Kanagawa'),
  ('Red Fuji');
