module TheDMV
  class Server < Sinatra::Base

    configure :development do
      register Sinatra::Reloader

      # sets up redis instance
      $redis = Redis.new({
        :host => "127.0.0.1",
        :port => 6379
      })
    end

    get('/') do
      render(:erb, :index)
    end

    get('/first_form') do
      render(:erb, :first_form)
    end

    post('/first_form') do
      id = $redis.incr("driver_id")
      name = params["driver_name"]
      number = params["license_number"]
      $redis.hmset("user:#{id}", "driver_name", params[name], "license_number", params[number])
      $redis.rpush("first_form", id)
      redirect to("/second_form")
    end

    get('/second_form') do
      render(:erb, :second_form)
    end

      post('/second_form') do
      id = $redis.incr("driver_id")
      dob = params["driver_dob"]
      sex = params["sex"]
      $redis.hmset("user:#{id}", "driver_dob", params[dob], "sex", params[sex])
      $redis.rpush("second_form", id)
      redirect to("/third_form")
      end

    get('/third_form') do
      render(:erb, :third_form)
    end

  end
end
