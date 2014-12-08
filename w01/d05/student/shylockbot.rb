# HELLO, AFTER TRYING THE HOMEWORK THE LONG WAY, AND THEN ATTEMPTING TO CONVERT USING THE METHODS, IT BEGAN TO GIVE ERRORS. NOW, IT HAS CLICKED ON WHAT NEEDED TO BE DONE FOR CORRECTION. I WOULD LIKE TO RESUBMIT THIS EVENING.***

require 'pry'
require 'colorize'


# $stdin.gets.chomp

def use_shylock_money
  (10000).to_i
end

def accounts(ducats)
  $stdin.gets(prompt)
  $stdin.gets.chomp
end

loans = {}

loop do
  owed = use_shylock_money
  $stdout.print(">> ")
  loop do
    if $stdin.gets("purse")
      $stdout.puts(":: ShylockBot pulls out his purse ::")
      $stdout.puts("10000 ducats")
      $stdout.print(">> ")
    else
      $stdin.gets("loan Antonio #{amount} ducats")
      loans[ducats] = []
      loans[ducats].push(amount)
      $stdout.puts("::ShylockBot gives Antonio #{amount} ducats::")
      $stdout.puts("-#{amount}")
  # else
    # balance = loans("10000 - #{loans} ducats").to_i
# $stdin.gets.to_i
    end
end

end
# # purse = {}
# borrowers = ["Antonio","Bassanio"]
# end
# binding.pry
