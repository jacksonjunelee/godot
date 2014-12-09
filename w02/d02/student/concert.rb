class Concert

  attr_accessor :band, :city, :venue, :date

  def initialize(b_band, c_city, v_venue, d_date)
    @band  = b_band
    @city  = c_city
    @venue = v_venue
    @date  = d_date
  end

    # def band= (b)
    #   @band = b
    # end

    # def band
    #   @band
    # end

    # def city= (c)
    #   @city = c
    # end

    # def city
    #   @city
    # end

    # def venue= (v)
    #   @venue = v
    # end

    # def venue
    #   @venue
    # end

    # def date= (d)
    #   @date = d
    # end

    # def date
    #   @date
    # end

end

best_night_of_life = Concert.new("Built to Spill", "Chicago", "Metro", "May 8, 2005")
puts "The best night of Travis' life was when he saw #{best_night_of_life.band}'s performance at the #{best_night_of_life.venue} in #{best_night_of_life.city} on #{best_night_of_life.date}."

embarrassing_first_concert = Concert.new("Sugar Ray", "Milwaukee, Wisconsin", "Marcus Amphitheater", "1998")
puts "Travis' first concert was in #{embarrassing_first_concert.city} in like #{embarrassing_first_concert.date} at the #{embarrassing_first_concert.venue}. The band? #{embarrassing_first_concert.band}."
