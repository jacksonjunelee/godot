DROP TABLE IF EXISTS artists;
DROP TABLE IF EXISTS paintings;

CREATE TABLE artists (
  id SERIAL PRIMARY KEY,
  name VARCHAR (80) NOT NULL,
  nationality VARCHAR (30) NOT NULL
);

CREATE TABLE paintings (
  id SERIAL PRIMARY KEY,
  title VARCHAR NOT NULL
  artist_id integer REFERENCES artists(id)
);

INSERT INTO artists
  (name, nationality)
VALUES
  ('Vincent Van Gogh', 'Dutch'),
  ('Pablo Picasso', 'Spanish'),
  ('Katsushika Hokusai', 'Japanese');

INSERT INTO paintings
  (title, artist_id)
VALUES
  ('Starry Night', 1),
  ('Cafe Terrace at Night', 1),
  ('Guernica', 2),
  ('The Old Guitarist', 2),
  ('The Great Wave off Kanagawa', 3),
  ('Red Fuji', 3);
