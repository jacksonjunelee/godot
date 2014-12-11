class Teacher < Human

  def initialize(name, age)
    super(name, age)
  end

  def speak(x)
    puts "#{x} (said the teacher in a soothing voice)"
  end

  def shout(y)
    puts "#{y.upcase}!"
  end

  def teach (z)
    puts "(checks for understanding and redirects, if necessary)"
  end
end


