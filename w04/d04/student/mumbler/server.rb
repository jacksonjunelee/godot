module Mumbler
  class Server < Sinatra::Base

    configure :development do
      register Sinatra::Reloader
    end

    get('/') do
      render(:erb, :index, {:layout => :default})
    end

    get('/mumbles') do
      render(:erb, :index, {:layout => :default})

    end

    get('/mumbles/:id') do
      render(:erb, :new, {:layout => :default})
    end

    post('/mumbles') do

    end

  end
end
