require 'pry'
require 'pg'
require 'active_record'
require_relative 'student'

ActiveRecord::Base.establish_connection(
  adapter:  'postgresql',
  host:     'localhost',
  username: 'kamari',  # your username
  database: 'hogwarts_app' # whatever postgres db you want to connect to
)

ActiveRecord::Base.logger = ActiveSupport::Logger.new($stdout)

binding.pry
