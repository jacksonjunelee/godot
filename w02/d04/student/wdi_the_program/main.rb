require 'pry'
require_relative 'human'
require_relative 'teacher'
require_relative 'student'

phil = Teacher.new("Phil Lamplugh", 505)
phil.speak("Hello and Welcome. Today, I'm going to talk about class hierarchies")

mr_lloyd = Teacher.new("Mr. Lloyd", 909)
mr_lloyd.shout("What in samhell are you doing now, Springer?")

phil.teach("Inheritance: when objs of one calls inherit the caracteristics of another.")

alice = Student.new("Alice", 211)
alice.do_homework("build robot")

binding.pry

