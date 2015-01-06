require 'redis'
$redis = Redis.new({
  :host => "127.0.0.1",
  :port => "6379"
  })

print("name? ")
name = $stdin.gets.capitalize.chomp

print("age? ")
age = $stdin.gets.to_i



$redis.set("name", name)
$redis.set("age", age)

$redis.hset("users", "name", name)
$redis.hset("users", "age", age)

# $redis.getall

id = $redis.incr("user_id")
$redis.hset("user:#{id}", "name", name)
$redis.hset("user:#{id}", "age", age)
$redis.hset("user:#{id}", "id", id)

user_2 = {
  name: "Dain",
  age: 32
}

user_3 = {
  name: "Angelina",
  age: 25
}
