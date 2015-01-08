module Wdinstagram
  class Server < Sinatra::Base

    ########################
    # Configuration
    ########################

    # allow simple "logging" of server output
    enable :logging

    configure :development do
      register Sinatra::Reloader
      $redis = Redis.new({
        :host => "127.0.0.1",
        :port => 6379
      })
    end

    ########################
    # Routes
    ########################

    get('/') do
      render(:erb, :index, :layout => :default)
    end

    get('/entries') do
                  # binding.pry
      entry_ids = $redis.lrange("entry_ids", 0, -1)

      @entries = entry_ids.map do |entry_id|
        $redis.hgetall("entry:#{entry_id}")
      end

      render(:erb, :index, :layout => :default)
    end

    get('/entries/new') do
      render(:erb, :new, :layout => :default)
    end



    get('/entries/:id') do
      render(:erb, :index, :layout => :default)
    end

    post('/entries') do
      id = $redis.incr("entry")
      $redis.hmset(
        "entry:#{id}",
        "author",     params["author"],
        "date_taken", params["date_taken"],
        "photo_url",  params["photo_url"]
        )
      $redis.rpush("entry_ids", id)
      redirect to("/entries")
    end

  end
end
