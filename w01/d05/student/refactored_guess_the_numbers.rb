# *Read* through the following code
# Write comments above *each line* explaining what it does

require 'colorize'
require 'pry'

# Methods

def generate_random_number
  (1..10).to_a.sample
end

def alert(message)
  $stdout.puts(message.green)
end

def warn(message)
  $stdout.puts(message.red)
end

def ask(question)
  $stdout.puts(question)
  $stdout.print('> ')
  $stdin.gets.chomp
end

# Main Program

players = {}

loop do
  secret_number = generate_random_number
  player = ask('Name? ')
  players[player] = []
  alert('I\'m thinking of a number between 1 and 10.')
  binding.pry
# if input is incorrect do...
  loop do
    guess = ask('Can you guess it?').to_i
    players[player].push(guess)
# ONLY IF TRUE DOES IT SKIP THE "WARN"
    break if secret_number == guess
# ONLY IF INPUT IS WRONG
    warn("#{guess}? Try again!")
  end

  alert("Great job, #{player}!")
  alert("You guessed in #{players[player].size} guesses.")
  choice = ask('New Game? y/n')
  break if choice.start_with?('n')
end

alert('Goodbye!')
