# Create a program that
# Prompt a user for their name
# Prompt a user for their age
# Print to standard out "Hello, NAME. You are AGE."

$stdout.puts "Please tell me your name."
  name = $stdin.gets.capitalize.chomp
$stdout.puts "Please tell me your age."
  age  = $stdin.gets.to_i

puts "Hello, #{name}. You are #{age}."
