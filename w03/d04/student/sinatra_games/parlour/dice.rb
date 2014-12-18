module Parlour

  class Dice
    attr_reader :array_dice

    def initialize(array)
      @array_dice = array
    end

    def roll
      @array_dice.map do |die|
        (1..die).to_a.sample
      end
    end

    def roll_and_sum
      sum = 0
      @array_dice.each do |die|
        sum += (1..die).to_a.sample
      end
      sum
    end

# -----------------OR-------------------

    # def between?
    #   if @roll_and_sum.inject(:+).between?(3, 36)
    #     return true
    #   else
    #     false
    #   end
    # end

    def self.roll(num_of_sides)
      (1..num_of_sides).to_a.sample
    end

  end




end
