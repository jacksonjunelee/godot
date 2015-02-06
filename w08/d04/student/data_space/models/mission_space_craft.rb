# CREATE TABLE missions_space_crafts (
#   mission_id     INTEGER REFERENCES missions(id),
#   space_craft_id INTEGER REFERENCES space_crafts(id)
# );

class MissionSpaceCraft < ActiveRecord::Base
end
