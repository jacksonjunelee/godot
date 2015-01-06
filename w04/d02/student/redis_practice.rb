require 'redis'
require 'pry'

$redis = Redis.new

  users = ["dain", "angie", "dennis", "PJ"]

users.each do |user|
  id = $redis.incr("users_count")
  $redis.hset("user:#{id}", "name", user)
  $redis.hset("user:#{id}", "id", id)
end

$redis.keys("user:*")


binding.pry
