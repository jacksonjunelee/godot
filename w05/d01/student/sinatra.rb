require 'redis'
require_relative 'diary'

module SinatraApp
  class Server < Sinatra::Base
      enable :sessions

  configure :development do
      register Sinatra::Reloader
      $persons_secrets = Redis.new
  end


    get '/' do
      render :erb, :index, layout: :default
    end

    get '/login' do
      session[:name]      = params[:name]
      session[:timestamp] = Time.now
      redirect to(params[:name])
    end

    get '/:username' do
      if session[:name] != params[:username]
        redirect to('/')
      @name = params[:username]
      @secrets = $persons_secrets.lrange "diary_app:#{@name}", 0, -1
      render :erb, :user, layout: :default
    end

  end
end
