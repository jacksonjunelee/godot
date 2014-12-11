class Human

  def initialize (name, age)
    puts "I occur due to the use of super."
    @name = name
    @age = age
    @walks_upright = true
  end

  def speak(x)
    puts x
  end

  def walks_upright?
    @walks_upright
  end

end
