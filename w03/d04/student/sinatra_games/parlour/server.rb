  module Parlour

    class Server < Sinatra::Base

      enable :logging

        # get('/coin_toss') do
        # @guess  = params[:guess]
        # @result = Parlour::Coin.flip

        # if @guess == @result
        #   @message = "That's my bae!"
        # else
        #   @message = "Boo hoo, darn!"
        # end

        # logger.info(@result)
        # #body("<a href='/coin_toss'>'Try Again!'</a>")
        # render(:erb, :coin_toss)
        # end

        get("/dice_roll") do
          # params[:number_of_dice] = params[:number_of_dice] || 0
          # params[:number_of_dice] ||= 0
          if params[:number_of_dice]
            @number_of_dice = params[:number_of_dice].to_i
            @dice = Parlour::Dice.new(Array.new(@number_of_dice) {6})

            @result = dice.roll(6)
          else
            @result = Parlour::Dice.roll(6)
          render(:erb, :dice_roll)
        end
        end
    end

  end
