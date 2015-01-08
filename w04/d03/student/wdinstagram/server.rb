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
      render(:erb, :index, :layout => :default)
    end

    get('/entries/new') do
      render(:erb, :new, :layout => :default)
    end

    get('/entries/:id') do
      render(:erb, :index, :layout => :default)
    end

    post('/entries/') do
      id = $redis.incr("author_id")
      author = params["author"]
      url = params["photo_url"]
      date = params["date_taken"]
      redirect to("/entries/:id")
    end

  end
end
