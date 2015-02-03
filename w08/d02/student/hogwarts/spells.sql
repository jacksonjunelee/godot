DROP TABLE IF EXISTS spells;

CREATE TABLE spells (
  id SERIAL PRIMARY KEY,
  name VARCHAR NOT NULL
);

INSERT INTO
  spells (name)

VALUES ('Accio'),
  ('Wingardium Leviosa'),
  ('Lumos'),
  ('Avada Kedavra');

SELECT students.fname, spells.*
FROM students
INNER JOIN spells
ON students.id = spells.id;
