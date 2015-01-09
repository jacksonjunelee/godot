require 'pry'
require 'httparty'


module WeatherApiHelper
  # class Server < Sinatra::Base

    # configure :development do
    #   register Sinatra::Reloader
    #   $redis = Redis.new
    # end



    # get('/') do
    #   city = params[:city_hash]
    #   weather_url = "http://www.wunderground.com/weather/api/#{city}.json"
    #   response = HTTParty.get(weather_url)
    #   render(:erb, :weather)
    # end

    def self.temperature(location)
      state = location.split(", ")[1]
      city = location.split(", ")[0].gsub(" ",".")
      weather_url = "http://api.wunderground.com/weather/api/765875c7525b52bb/conditions/q/#{state}/#{city}.json"
      response = HTTParty.get(weather_url)
    end


  # end #ends class
end #ends module

binding.pry
