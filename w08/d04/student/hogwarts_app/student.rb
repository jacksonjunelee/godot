class Student < ActiveRecord::Base

  students = Student.all
  weasley = Student.find_by(lname: 'Weasley')
  # s = Student.new


end




