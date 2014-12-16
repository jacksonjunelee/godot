module Hello
  class Server < Sinatra::Base

    # invoking a method from Sinatra::Base
    # '/' is the path
    # get is also the http method
    # the do/end block is the response

    get('/') do
      # this constructs the response
      status(200)
      headers({"x-hacker" => "hey hacker ;)"})
      body("<h1>Everything is ok!</h1>")
    end

# another route handler for localhost:3000/kittens
    get('/kittens') do
      status(200)
      headers({})
      body('<p>"meow"</p>
      <img src=http://static.squarespace.com/static/5068a99084ae5a723be3f171/t/52701d03e4b00e2f47e7474a/1383079207639/kitten-in-a-sweater-kittens-5890480-670-578.jpg>')
    end

  end #closes Server
end #closes module Hello

