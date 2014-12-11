require 'pry'
class Movie


attr_accessor :flick, :title

  def initialize(flick, title)
    @flick = flick
    @title = title
  end

attr_reader :movie, :flick

    @@flick= true
    def flick
      @flick
    end

    @@movie= true
    def movie
      @movie
    end


#   def
#   end
end



# ---------------------------Part 2 ------------------------
flick = Movie.new("title", "Jaws")

# Movie.flick              #=> true

# flick.class              #=> Movie < Object
# flick.is_a? Movie        #=> true
# flick.title              #=> "Jaws"
# flick.title.is_a? String #=> true

# ---------------------------Part 3 ++ --------------------

class Person

attr_accessor :director, :movie

  def initialize(director)
    @director = director
  end

  def movie= (movie)
    @movie = movie
  end

attr_reader :movie, :flick

    @@flick= true
    def flick
      @flick
    end

    @@movie= true
    def movie
      @movie
    end

end

p1 = Person.new("Richard Ayoade")
movie.director = p1
# movie.director.is_a? Person #=> true
# movie.director = "Richard Ayoade" # >> "Director can only be set to a Person object!"
# movie.director #=> still nil!
