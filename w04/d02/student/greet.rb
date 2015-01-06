<<<<<<< HEAD
require 'redis'
require 'pry'

$redis = Redis.new({:host => "127.0.0.1", :port => "6379"})
=======
>>>>>>> 2edc6604d7d2fee209666ab192ca855b3897952d
# Create a program that
# Prompt a user for their name
# Prompt a user for their age
# Print to standard out "Hello, NAME. You are AGE."
<<<<<<< HEAD

$stdout.puts "Please tell me your name."
  name = $stdin.gets.capitalize.chomp
  $redis.set("name", name)

$stdout.puts "Please tell me your age."
  age  = $stdin.gets.to_i
  $redis.set("age", age)

puts "Hello, #{$redis.get("name")}. You are #{$redis.get("age")}."
# Challenge: store the name & age in Redis; exit and rerun program. If the name exists in redis, return the name!

# $redis.set("name", "Kamari")
# $redis.set("age", "57")
# puts "Hello, #{$redis.get("name")}. You are #{$redis.get(age)}."

binding.pry
=======
>>>>>>> 2edc6604d7d2fee209666ab192ca855b3897952d
