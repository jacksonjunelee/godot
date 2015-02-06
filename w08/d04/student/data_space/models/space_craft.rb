# CREATE TABLE space_crafts (
#   id         SERIAL       PRIMARY KEY,
#   name       VARCHAR(100) NOT NULL,
#   craft_type VARCHAR(100),
#   capacity   INTEGER      DEFAULT 5
# );

class SpaceCraft < ActiveRecord::Base
end
