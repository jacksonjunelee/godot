class Bike < Product

attr_reader :gear_count, :tire_diameter

  def initialize(p, b, gear_count, tire_diameter)
    super(p, b)
     @gear_count = gear_count
     @tire_diameter = tire_diameter
  end

end
