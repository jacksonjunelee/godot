module CatTinder
  class Server < Sinatra::Base

    ########################
    # Configuration
    ########################

    # allow simple "logging" of server output
    enable :logging

    configure :development do
      register Sinatra::Reloader
<<<<<<< HEAD
      $redis = Redis.new({
        :host => "127.0.0.1",
        :port => "6379"
      })
=======
      $redis = Redis.new
>>>>>>> 6d420a648bebc46c6e0fd717cfd3960b8731667e
    end

    ########################
    # Routes
    ########################
<<<<<<< HEAD
    get('/') do

    end

  end #ends Class
end #ends module
=======


  end
end
>>>>>>> 6d420a648bebc46c6e0fd717cfd3960b8731667e


