module KoopaCrud
  class Server < Sinatra::Base

  redis = Redis.new

    enable :logging, :sessions

    configure :development do
      register Sinatra::Reloader
      require 'pry'
    end

    get'/' do
      render :erb, :index
    end

    get'/koopas' do
      render :erb, :index
    end

    get'/koopas/new' do
      render :erb, :new
    end

  end
end
