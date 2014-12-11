class Student < Human

attr_reader :homeworks

  def initialize(name, age)
    puts "I occur before super gets called"
    super(name, age) # tells ruby to go to the superclass (Human), and run the code found in Human.
    puts "I occur after super gets called"
    @homeworks = []
  end

  def sang(s)
    puts "#{s} (in her head, of course!)"
  end

  def speak(x)
    puts "#{x} blah blah blah."
  end


  def do_homework (h)
    # homeworks.push(h) #-----OR----
    homeworks << h
    puts "#{h} this worked."
  end

end #of class Student
