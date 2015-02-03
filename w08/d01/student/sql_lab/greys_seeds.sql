DROP TABLE IF EXISTS actors;

CREATE TABLE actors (
  id SERIAL PRIMARY KEY,
  actor VARCHAR (40) NOT NULL,
  character VARCHAR (40) NOT NULL,
  episodes INTEGER NOT NULL,
  start_year INTEGER NOT NULL,
  end_year INTEGER NOT NULL
);

INSERT INTO actors (actor, character, episodes, start_year, end_year) VALUES ('Demi Lovato', 'Hayley May', 1, 2010, 2010);
