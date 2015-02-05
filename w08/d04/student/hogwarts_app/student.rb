# create table students (
#   id serial PRIMARY KEY,
#   fname varchar NOT NULL,
#   lname varchar NOT NULL,
#   house_id integer REFERENCES houses(id)
# );

class Student < ActiveRecord::Base


end






