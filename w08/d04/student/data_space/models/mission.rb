# CREATE TABLE missions (
#   id               SERIAL       PRIMARY KEY,
#   name             VARCHAR(100) NOT NULL,
#   start_date       DATE         NOT NULL,
#   end_date         DATE,
#   space_program_id INTEGER      REFERENCES space_programs(id),
#   space_craft_id   INTEGER      REFERENCES space_crafts(id),
#   piloted_by_id    INTEGER      REFERENCES space_travelers(id)
# );

class Mission < ActiveRecord::Base
end
