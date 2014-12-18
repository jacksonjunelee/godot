  module Parlour

    class Server < Sinatra::Base

      enable :logging

        get('/coin_toss') do
        @guess  = params[:guess]
        @result = Parlour::Coin.flip

        if @guess == @result
          @message = "That's my bae!"
        else
          @message = "Boo hoo, darn!"
        end

        logger.info(@result)
        #body("<a href='/coin_toss'>'Try Again!'</a>")
        render(:erb, :coin_toss)
        end
    end
  end
