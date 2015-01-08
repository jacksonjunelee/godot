require 'redis'

redis = Redis.new

redis.set("entry_id", "1000")
