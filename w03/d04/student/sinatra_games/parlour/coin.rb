require 'pry'

module Parlour

  class Coin

    def self.flip
      ["heads","tails"].sample
    end

  end

end

# 14.times { puts Parlour::Coin.flip }
