class Apartment

  attr_reader :unit, :num_beds, :num_baths, :tenants

    def initialize(u, b, a, t)
      @unit      = u
      @num_beds  = b
      @num_baths = a
      @tenants   = t
    end

    def unit= (u)
      @unit = u
    end

    def unit
      @unit
    end

    def num_beds= (b)
      @num_beds = b
    end

    def num_beds
      @num_beds
    end

    def num_baths= (a)
      @num_baths = a
    end

    def num_baths
      @num_baths
    end

    def tenants= (t)
      @tenants = t
    end

    def tenants
      @tenants
    end





end
