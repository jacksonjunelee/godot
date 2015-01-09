module GravatarApp
  class Server < Sinatra::Base

    configure :development do
      register Sinatra::Reloader
      $redis = Redis.new({
        :host => "127.0.0.1",
        :port => 6379
      })
    end

    get('/') do
      render(:erb, :index, {:layout => :default})
    end

    get('/students') do
      emails = $redis.lrange('wdi:students', 0, -1)
      @students = emails.map do |email|
        Digest::MD5.hexdigest(email)
        end
      render(:erb, :students, {:layout => :default})
    end

    get('/students/:email_hash') do
      email = params[:email_hash]
      profile_url = "http://www.gravatar.com/#{email}.json"
      response = HTTParty.get(profile_url)
      name = response["entry"][0]["name"]
      render(:erb, :profile, {:layout => :default})
    end


  end

end
