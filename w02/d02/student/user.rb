class User

  def initialize(x, y, z, g)
    @name   = x
    @email  = y
    @age    = z
    @gender = g
  end

  def tweets
    @tweets
  end


# SETTER method sets an attribute (@name) of a User object to whatever value gets passed as an argument.
  def set_name= (x)
    @name = x
  end

# # GETTER method
  def retrieve_name
    return @name
  end

  def email= (y)
    @email = y
  end

  def email
    return @email
  end

  def age= (z)
    @age = z
  end

  def age
    return @age
  end

  def gender= (g)
    @gender = g
  end

  def gender
    @gender
  end

end

first_user = User.new(
  "Travis Vanderhoop",
  "travis@yourfriendtravis.com",
  35,
  "male with a sprinkle of female"
  )

puts "user's name is #{first_user.set_name}"
first_user.set_name=("Travos")
puts "user's names is now #{first_user.set_name}"
puts first_user.tweets
first_user.set_name=("Travis")
first_user.email=("travis@yourfriendtravis.com")
first_user.age=("35")
first_user.gender=("male with a sprinkle of female")
# puts first_user.retrieve_name
# puts first_user.email
# puts first_user.age
puts "#{first_user.retrieve_name} #{first_user.gender}"

puts "The first user's gender is #{first_user.gender}."

# second_user = User.new
# second_user.set_name="Dain"
# second_user.email=("carver403@gmail.com")
# second_user.age=(20017)
# second_user.gender="male"
# puts "The second user's name is #{second_user.retrieve_name} and his email is #{second_user.email}."
# puts "The second user's gender is #{second_user.gender}."
