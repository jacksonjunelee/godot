
require 'redis'
require 'pry'

$redis = Redis.new({
  :host => "127.0.0.1",
  :port => "6379"
  })

# Create a program that
# Prompt a user for their name
# Prompt a user for their age
# Print to standard out "Hello, NAME. You are AGE."

$stdout.puts "Please tell me your name."
  name = $stdin.gets.capitalize.chomp
  $redis.set("name", name)

$stdout.puts "Please tell me your age."
  age  = $stdin.gets.to_i
  $redis.set("age", age)

$redis.hset("users", "name", "#{name}")

puts "Hello, #{$redis.get("name")}. You are #{$redis.get("age")}."
# Challenge: store the name & age in Redis; exit and rerun program. If the name exists in redis, return the name!

# $redis.set("name", "Kamari")
# $redis.set("age", "57")
# puts "Hello, #{$redis.get("name")}. You are #{$redis.get(age)}."

binding.pry
