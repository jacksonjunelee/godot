class Apartment

  attr_reader :unit, :num_beds, :num_baths, :tenants

    def initialize(u, b, a)
      @unit      = u
      @num_beds  = b
      @num_baths = a
    end

    def bed= (be)
      @bed = be
    end

    def bed
      @bed
    end

    def bath= (ba)
      @bath = ba
    end

    def bath
      @bath
    end

    def price= (p)

b1 = Apartment.new("B", 2, 1)
b1.bed=(1000)
b1.bath=(500)
b1.price=("#{b1.bed} + #{b1.bath}")


end

###########I UNDERSTAND THE METHODS, BUT NEED TO COMPLETE THE TASKS#######
