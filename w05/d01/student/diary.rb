require 'pry'
require 'redis'

class Diary

  def initialize
    # @redis = Redis.new
    # @persons_secrets = {}
# --------OR-----------------------
      @persons_secrets = Redis.new
  end

  def tell_secret(person, secret)
   @persons_secrets.lpush "diary_app:#{person}", secret
    # if @persons_secrets[person].nil?
    #   @persons_secrets[person] = []
    # end
    # @persons_secrets[person].push secret
    @persons_secrets.lpush person, secret
  end

  def get_secrets(person)
    # @persons_secrets[person]
    @persons_secrets.lrange "diary_app:#{person}", 0, -1
  end

end #ends class


