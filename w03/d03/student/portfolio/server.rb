require 'pry'

module Portfolio
  class Server < Sinatra::Base
    # get('/') do
    #   status(200)
    #   headers({"X-Powered-By" => "Sinatra"})
    #   body("<h1>Good Morning. The current time is #{Time.new}</h1>")
    # end

    get('/') do
      # status(301)
      # headers({"Location" => "/index.html"})
      redirect to "/holidays"
    end

    get('/holidays') do
      "the holidays are near"
    end

  end


end
