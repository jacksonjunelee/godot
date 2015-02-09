require 'pry'
require 'pg'
require 'ffaker'
require 'active_record'

require_relative './config.rb'
require_relative '/models/user.rb'
require_relative '/models/purchase.rb'
require_relative '/models/movie.rb'
require_relative '/models/genre.rb'

ActiveRecord::Base.establish_connection(
  adapter:  'postgresql',
  host:     'localhost',
  username: 'kamari',
  database: 'popcorn_db'
)

# Logging
ActiveRecord::Base.logger = ActiveSupport::Logger.new($stdout)
