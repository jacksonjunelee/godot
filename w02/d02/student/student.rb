class Student

  def initialize (f_name, l_name, p_occ)
      @first_name = f_name
      @last_name = l_name
      @prior_occupation = p_occ
  end
  def first_name= (a)
    @first_name = a
  end

  def first_name
    @first_name
  end

  def last_name= (a)
    @last_name = a
  end

  def last_name
    @last_name
  end

  def prior_occupation= (a)
    @prior_occupation = a
  end

  def prior_occupation
    @prior_occupation
  end

end

beth = Student.new("Beth", "Greene", "farmer's daughter")
# first_student.first_name="Beth"
# first_student.last_name=("Greene")
# first_student.prior_occupation="farmer's daughter"
# puts first_student.first_name
# puts first_student.last_name
# puts first_student.prior_occupation
puts "#{beth.first_name} #{beth.last_name} was a #{beth.prior_occupation} in her last career."

# second_student = Student.new
# second_student.first_name="Rick"
# second_student.last_name=("Grimes")
# second_student.prior_occupation="state trooper"
# puts "#{second_student.first_name} #{second_student.last_name} was a #{second_student.prior_occupation} in his last career."

# daryl_dixon = Student.new
# daryl_dixon.first_name="Daryl"
# daryl_dixon.last_name=("Dixon")
# daryl_dixon.prior_occupation="redneck"
# puts "#{daryl_dixon.first_name} #{daryl_dixon.last_name} was a #{daryl_dixon.prior_occupation} in his last career."

