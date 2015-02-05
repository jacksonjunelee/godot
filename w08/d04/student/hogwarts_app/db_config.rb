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

  students = Student.all
  weasleys = Student.where({lname: 'Weasley'})
  lar_vol = Student.find_by({fname: 'Larry'}).update({fname: 'Tom'}).find_by({lname: 'Riddle'}).update({lname: 'Voldemort'})

binding.pry
