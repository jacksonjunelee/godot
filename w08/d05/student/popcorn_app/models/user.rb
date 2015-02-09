# CREATE TABLE users (
#  id SERIAL PRIMARY KEY,
#  email VARCHAR (100) UNIQUE,
#  born_on DATE
# );

class User < ActiveRecord::Base
  validates :name, {presence: true}
  validates :email, uniqueness: true
  validates :born_on, {presence: true}
end
