# create table students (
#   id serial PRIMARY KEY,
#   fname varchar NOT NULL,
#   lname varchar NOT NULL,
#   house_id integer REFERENCES houses(id)
# );

class Student < ActiveRecord::Base

  belongs_to :house
  has_and_belongs_to_many :spells

  validates  :fname, {presence: true}
  validates  :lname, {presence: true}
    # validates :student,

  # validates :death_eater_memberships,

  def read_directions
    "never!"
  end

  def full_name
    fname + " " + lname
  end

end






