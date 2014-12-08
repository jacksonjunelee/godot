# *Read* through the following code
# Write comments above *each line* explaining what it does

# sets the GEM for this code
require 'colorize'

def alert(message)
  $stdout.puts(message.blue)
end

def exit_the_program()
  $stdin.gets
end

def continue(chat)
  $stdin.gets.chomp
  $stdout.print("That's very interesting, tell me more.")
end

def get_user_input
   $stdout.print(">>")
   $stdin.gets.chomp.downcase
end

# responses_declarative = ["Oh wow, interesting.", "That's quite intriguing.", "You're a smart one."]
# responses_inquiring = ["Never!", "Once upon a time...", "Catch me if you can."]
# responses_exclamation = ["Dude!", "Duuuude.", "Oh mi gosh!"]

loop do
  alert("Hi there, I'm Eliza! Let's have a chat.")
  user_input = get_user_input
  $stdout.puts(user_input + "!")

  loop do
    $stdout.puts("hmmm")
    break if
      user_input == "goodbye"
  end


  # When the user inputs the string:
  # allow the user to enter a string
  # display a prompt
  # read in the user's input
  # evaluate the input
  # if the input is goodbye
  #   exit the program
  # else
  #   continue to loop
  # "Goodbye."
  # ... Eliza will end her conversation.

end



# ai.start_with?('y', 'E')
