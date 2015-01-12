module SinatraApp
  class Server < Sinatra::Base

  configure :development do
      register Sinatra::Reloader
    end

get '/' do
  render :erb, :index, :layout => :default
end

get '/diary_entry' do
  render :erb, :diary_app, :layout => :default
end

  end
end
