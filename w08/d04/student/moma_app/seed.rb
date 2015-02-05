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



