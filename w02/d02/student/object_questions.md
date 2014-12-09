Questions to Answer with Your Partner

class Student
  def initialize(f_name, l_name, occupation)
    @first_name       = f_name
    @last_name        = l_name
    @prior_occupation = occupation
  end

  def first_name=(x)
    @first_name = x
  end

  def first_name
    return @first_name
  end
end

student_one = Student.new("Chadd", "Clairmont", "Scuba Diving Instructor")

student_two = Student.new("Kristen", "Macfarlane", "Academic")

In the code above:

What is class ?
What is Student ?
  a class
What type of method is first_name= ?
  a setter value
What type of method is first_name ?
  a getter value
What type of variable is @first_name ?
  instance variable
What does the initialize method do?
  sets up the initial state of an object
When does the initialize method execute?
  when it is called by the class method .new
What's the difference between a class and an instance?
What type of object does the variable student_one hold?
  an instance of Student
What type of object does the variable student_two hold?
  an instance of Student
What will the return value of student_one.first_name be?
 Chadd
What will the return value of student_two.first_name be?
  Kristen
