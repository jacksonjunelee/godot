DROP TABLE IF EXISTS students;
DROP TABLE IF EXISTS houses;

CREATE TABLE students (
  id SERIAL PRIMARY KEY,
  fname VARCHAR NOT NULL,
  lname VARCHAR NOT NULL,
  house_id INTEGER
);

INSERT INTO students
  (fname, lname, house_name);

VALUES
  ('Fred', 'Weasly', 'Gryffindor'),
  ('George', 'Weasly', 'Gryffindor');

-- these cmds will change tables that already exist --
ALTER TABLE students RENAME COLUMN house_name TO house_id;

CREATE TABLE houses (
  id SERIAL PRIMARY KEY,
  name varchar UNIQUE,

)
