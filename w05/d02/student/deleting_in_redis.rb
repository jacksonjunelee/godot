require 'redis'
require 'pry'

$redis = Redis.new
$redis.flushdb

$redis.rpush("colors", ["blue", "green"])
$redis.rpush("colors", "red")
$redis.rpush("colors", "orange")
$redis.rpush("colors", "mauve")
$redis.rpush("colors", "purple")
$redis.rpush("colors", "dave")

# lists all values in the hash "colors"
$redis.lrange("colors", 0, -1)
# deletes the last value in the "colors" hash
$redis.rpop("colors")
# deletes the first value in the "colors" hash
$redis.lpop("colors")
# deletes any values outside of the set position parameters
$redis.ltrim("colors", 1, 3)

# creates hash named "PJ"
$redis.hmset("PJ", "first_name", "phillip", "last_name", "hughes", "age", 34)
# lists all key-value pairs in "PJ"
$redis.hgetall("PJ")
# changes first_name from "phillip" to "pj"
$redis.hset("PJ", "first_name", "PJ")
# deletes age field from "PJ"
$redis.hdel("PJ", "age")
# deletes multiple key-value pairs from the "PJ" hash
$redis.hdel("PJ", ["first_name", "last_name"])

binding.pry
