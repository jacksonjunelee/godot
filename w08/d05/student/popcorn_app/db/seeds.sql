require 'ffaker'
require 'pg'

pg_conn = PG.connect(dbname: 'popcorn_db')

10.times do
  name  = Faker::Name.name
  #=> "Miss Pearlie Buckridge", eg
  email = Faker::Internet.email
  #=> "grayce@ledner.ca", eg
  born  = Faker::Time.date(:year_range => 60, :year_latest => 11)
  #=> "1976-04-09 00:00:00 -0500", eg

  pg_conn.exec_params("INSERT INTO users (name, email, born_on) VALUES ($1, $2, $3)", [name, email, born])
end

Faker::Movie.title
