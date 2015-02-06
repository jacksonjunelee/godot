require 'pry'
require 'active_record'
require_relative 'models/mission'
require_relative 'models/mission_space_craft'
require_relative 'models/nation'
require_relative 'models/space_craft'
require_relative 'models/space_program'
require_relative 'models/space_traveler'

ActiveRecord::Base.establish_connection(
  adapter:  'postgresql',
  host:     'localhost',
  username: 'Kamari',          # your username
  database: 'data_space_db' # whatever postgres db you want to connect to
)

ActiveRecord::Base.logger = ActiveSupport::Logger.new($stdout)
