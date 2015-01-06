module PingPong
  class Game

    attr_accessor :difficulty, :difficulty=

    @@state = nil
    @@difficulty = :medium

    def self.state
      @@state
    end

    def difficulty
      @@difficulty
    end







  end #end of Class
end #end of module
