DROP TABLE IF EXISTS mission;
DROP TABLE IF EXISTS space_traveler;
DROP TABLE IF EXISTS space_craft;
DROP TABLE IF EXISTS nation;
DROP TABLE IF EXISTS space_program;

CREATE TABLE space_program (
  id SERIAL PRIMARY KEY,
  name VARCHAR (70) NOT NULL,
  budget VARCHAR (70) NOT NULL,
  director NOT NULL,
  founded_on DATE
);

CREATE TABLE nation (
  id SERIAL PRIMARY KEY,
  name VARCHAR (70) NOT NULL,
  country_code VARCHAR (4) NOT NULL,
  head_of_state VARCHAR (70) NOT NULL
);

CREATE TABLE space_craft (
  id SERIAL PRIMARY KEY,
  name VARCHAR (70) NOT NULL,
  type VARCHAR(70),
  capacity INTEGER NOT NULL
);

CREATE TABLE space_traveler (
  id SERIAL PRIMARY KEY,
  name VARCHAR (70) NOT NULL,
  role VARCHAR (70) NOT NULL,
  born_on DATE,
  gender VARCHAR (6) NOT NULL,
  nation_id INTEGER REFERENCES nation
);

CREATE TABLE mission (
  id SERIAL PRIMARY KEY,
  name VARCHAR (70) NOT NULL,
  start_date DATE,
  end_date DATE,
  space_program_id INTEGER REFERENCES space_program,
  space_craft_id INTEGER REFERENCES space_craft,
  piloted_by_id INTEGER REFERENCES space_traveler
);
