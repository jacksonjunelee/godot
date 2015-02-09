# CREATE TABLE genres (
#  id SERIAL PRIMARY KEY,
#  name VARCHAR (100) NOT NULL
# );

class Genre < ActiveRecord::Base
  has_and_belongs_to_many :movies
  validates :name, {presence: true}
end
