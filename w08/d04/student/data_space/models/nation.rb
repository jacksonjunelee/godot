# CREATE TABLE nations (
#  id            SERIAL       PRIMARY KEY,
#  country_code  VARCHAR(2)   UNIQUE NOT NULL, -- ISO 3166-1 codes (CCs)
#  name          VARCHAR(50)  NOT NULL,
#  head_of_state VARCHAR(100)
# );

class Nation < ActiveRecord::Base
end
