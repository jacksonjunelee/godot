require 'pry'
hamlets = [
  "Laurence Olivier, 1948",
  "Grigori Kozintsev, 1964",
  "Tony Richardson, 1969",
  "Franco Zeffirelli, 1990",
  "Kenneth Branagh, 1996",
  "Michael Almereyda, 2000"
]

hamlets.each do |ham_line|
  ham_line #is the string
  actor_and_year = ham_line.split(",")
  actor = actor_and_year[0]
  year = actor_and_year[1]
  msg = "O! the venerable #{actor} starred as Hamlet in #{year}"
  puts(msg)
end

hamlets_array = hamlets.map do |ham_line| ham_line
  name_and_year = ham_line.split(",")
  year = name_and_year[1].to_i
  name = name_and_year[0]
  [name, year]
end
puts hamlets_array

hammertime = hamlets_array.map do |ham_array|
  name = ham_array[0]
  year = ham_array[1]
  {:name => name,
  :year => year}
end

swinging_hamlets = hammertime.select { |hammertime| hammertime[:year].between?(1959, 1970)}
# ----------------or-----------
year = hammertime[:year]
year.to_s.include?("196")

future_hamlets = hammertime.select { |hammertime| hammertime[:year].between?(1999, 2015)}
# ----------or--------------
hammertime[:year].between?(1999, 2015)


quotes_array = [
  ["To be, or not to be: that is the question", "Hamlet - (Act III, Scene I)."],
  ["A little more than kin, and less than kind", "Hamlet - (Act I, Scene II)."],
  ["And it must follow, as the night the day, thou canst not then be false to any man", "Hamlet - (Act I, Scene III)"],
  ["This is the very ecstasy of love", "Hamlet - (Act II, Scene I)."],
  ["Brevity is the soul of wit", "Hamlet - (Act II, Scene II)."],
  ["Do you think I am easier to be played on than a pipe?", "Hamlet - (Act III, Scene II)."],
  ["Doubt that the sun doth move, doubt truth to be a liar, but never doubt I love", "Hamlet - (Act II, Scene II)."],
  ["I will speak daggers to her, but use none", "Hamlet - (Act III, Scene II)."],
  ["In my mind's eye", "Hamlet - (Act I, Scene II)."],
  ["Neither a borrower nor a lender be; For loan oft loses both itself and friend, and borrowing dulls the edge of husbandry", "Hamlet - (Act I, Scene III)."],
  ["Rich gifts wax poor when givers prove unkind", "Hamlet - (Act III, Scene I)."],
  ["That it should come to this!", "Hamlet - (Act I, Scene II)."],
  ["The lady doth protest too much, methinks", "Hamlet - (Act III, Scene II)."],
  ["The plays the thing wherein I'll catch the conscience of the king", "Hamlet - (Act II, Scene II)."],
  ["There is nothing either good or bad, but thinking makes it so", "Hamlet - (Act II, Scene II)."],
  ["This above all: to thine own self be true", "Hamlet - (Act I, Scene III)."],
  ["Though this be madness, yet there is method int.", "Hamlet - (Act II, Scene II)."],
  ["What a piece of work is man! how noble in reason! how infinite in faculty! in form and moving how express and admirable! in action how like an angel! in apprehension how like a god! the beauty of the world, the paragon of animals! ", "Hamlet - (Act II, Scene II)."],
  ["When sorrows come, they come not single spies, but in battalions", "Hamlet - (Act IV, Scene V)."]
]

quotes_array.each do |sample_quote|
  sample_quote #is the string
  quote_play_act_scene = sample_quote.split(",").split(":").split("-")
  quote = quote_play_act_scene[0]
  play = quote_play_act_scene[1]
  act = quote_play_act_scene[2]
  scene = quote_play_act_scene[3]
end

hamlets_array = hamlets.map do |ham_line| ham_line
  name_and_year = ham_line.split(",")
  year = name_and_year[1].to_i
  name = name_and_year[0]
  [name, year]
end
puts hamlets_array

hammertime = hamlets_array.map do |ham_array|
  name = ham_array[0]
  year = ham_array[1]
  {:name => name,
  :year => year}
end



binding.pry
