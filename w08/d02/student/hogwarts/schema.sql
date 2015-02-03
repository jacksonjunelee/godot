DROP TABLE IF EXISTS students;
DROP TABLE IF EXISTS houses;

CREATE TABLE houses (
  id SERIAL PRIMARY KEY,
  name varchar UNIQUE
);

CREATE TABLE students (
  id SERIAL PRIMARY KEY,
  fname VARCHAR NOT NULL,
  lname VARCHAR NOT NULL,
  house_id INTEGER REFERENCES houses (id)
);

-- INSERT INTO students
--   (fname, lname, house_id) VALUES
--   ('Fred', 'Weasly', 1),
--   ('George', 'Weasly', 1);

-- these cmds will change tables that already exist --
  -- ALTER TABLE students RENAME COLUMN house_name TO house_id

-- Try and import the students.sql and houses.sql files inside Hogwarts.
    -- DONE!
      -- psql -d hogwarts_app -f students.sql
      -- psql -d hogwarts_app -f houses.sql
-- Try importing them in different order. Does the order matter?
    -- YES (foreign_key error)

-- How do we connect??
SELECT students.*, houses.*
FROM students
INNER JOIN houses
ON STUDENTS.house_id = houses.id;

SELECT students.fname, houses.*
FROM students
INNER JOIN houses
ON STUDENTS.house_id = houses.id;
