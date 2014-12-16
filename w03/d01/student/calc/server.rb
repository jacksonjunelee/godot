require 'pry'
module Calc
  class Server < Sinatra::Base

    get('/') do
      status(200)
      headers()
      # make "Hello" a hyperlink
      html = '<a href="/hello">Hello</a>'
      body(html)
    end

    get('/hello') do
      status(200)
      headers()
      body("Nice to meet you :-)")
    end

    get ('/hi/:name') do
      "Hello #{params[:name]}"
    end

    get ('/:x/times/:y') do
      sum = params[:x].to_i * params[:y].to_i
      "answer is #{sum}"

    end

  end
end
