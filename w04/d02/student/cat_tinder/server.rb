module CatTinder
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
        :port => "6379"
      })
    end

    ########################
    # Routes
    ########################
    get('/') do

    end

  end #ends Class
end #ends module


