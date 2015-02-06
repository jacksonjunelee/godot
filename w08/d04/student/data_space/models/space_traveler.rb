# CREATE TABLE space_travelers (
#   id        SERIAL       PRIMARY KEY,
#   name      VARCHAR(100) NOT NULL,
#   role      roles        DEFAULT 'Spaceflight Participant',
#   born_on   DATE         NOT NULL,
#   gender    genders      NOT NULL,
#   nation_id INTEGER      REFERENCES nations(id)
# );

class SpaceTraveler < ActiveRecord::Base
end
