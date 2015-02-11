# DROP TABLE IF EXISTS cheeses;

# CREATE TABLE cheeses (
#   id          SERIAL PRIMARY KEY,
#   name        VARCHAR(50) NOT NULL UNIQUE,
#   milk_type   VARCHAR(20) NOT NULL,
#   image_url   VARCHAR,
#   description TEXT,
#   updated_at  TIMESTAMP,
#   created_at  TIMESTAMP
# );

class Cheese < ActiveRecord::Base

end
