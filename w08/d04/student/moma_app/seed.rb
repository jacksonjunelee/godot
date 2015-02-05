require 'pry'
require 'pg'
require 'active_record'

require_relative 'artist'
require_relative 'painting'

ActiveRecord::Base.establish_connection(
  adapter:  'postgresql',
  host:     'localhost',
  username: 'kamari',  # your username
  database: 'moma_db' # whatever postgres db you want to connect to
)

ActiveRecord::Base.logger = ActiveSupport::Logger.new($stdout) ##OUTPUTS MILLISEC COUNTER##

# a1 = Artist.new
# a1.name = "Vincent Van Gogh"
# a1.nationality = "Dutch"
# a1.save

# a2 = Artist.create({name: "Picasso", nationality: "Spanish"})

# a1.paintings.create({name: "Starry Night"})
# p1 = Painting.new({name: "Sunflowers"})
# a1.paintings << p1

# p2 = Painting.new({name: "The Postman", artist_id: a1.id})
