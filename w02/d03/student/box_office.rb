require 'pry'
# Transform the following string of ratings into an array of strings.

ratings = "pg-thirteen,pg,r,pg,pg-thirteen,pg-thirteen,pg-thirteen,r,r,r,r,pg-thirteen,r,pg-thirteen,r,r,r,r,r,r,pg-thirteen,r,pg-thirteen,pg-thirteen,pg,r,r,pg,pg".split(",")
puts ratings
binding.pry

# Convert the following string of movie titles into an Array of movie titles.

titles = "the hunger games: mockingjay - part 1|penguins of madagascar|horrible bosses 2|big hero 6|interstellar|dumb and dumber to|the theory of everything|gone girl|the pyramid|birdman|nightcrawler|st. vincent|fury|beyond the lights|wild|foxcatcher|the homesman|whiplash|john wick|the equalizer|guardians of the galaxy|the judge|the maze runner|ouija|alexander and the terrible, horrible, no good, very bad day|rosewater|hector and the search for happiness|the book of life|the boxtrolls".split("|")
puts titles

movie_scores_string = "65%, 76%*71%, 68%*34%, 60%*89%, 94%*73%, 87%*26%, 49%*81%, 84%*88%, 89%*7%, 39%*94%, 86%*95%, 87%*76%, 82%*78%, 88%*84%, 83%*92%, 80%*86%, 77%*79%, 53%*96%, 96%*85%, 82%*61%, 81%*90%, 94%*47%, 76%*63%, 73%*7%, 29%*62%, 65%*74%, 75%*36%, 67%*82%, 82%*75%, 68%".split(",")
movie_scores = []
movie_scores.push(movie_scores_string)
puts movie_scores

# Transform the array of ratings from above, replace "thirteen" with "13".

ratings.each do |rating|
  rating.gsub("thirteen", "13")
end

new_ratings = []
ratings.each do |rating|
  new_rating = rating.gsub("thirteen", "13")
  new_ratings.push(new_rating)
end

mapped_ratings = ratings.map do |rating|
  rating.gsub("thirteen", "13")
end

# Transform the above array of ratings so that each string is all uppercased.

mapped_ratings_cap = ratings.map do |rating|
  rating.upcase
end
# -------------------OR-------------------- #
mapped_ratings_cap = ratings.map &:upcase
$stdout.puts(mapped_ratings_cap)
# -------------------or-------------------- #
mapped_ratings.map { |rating| rating.upcase }

# Transform that array of movie titles so that every word in each string is capitalized.

mapped_titles = titles.map do |title|
  words = title.split(" ")
  mapped_titles
end
# ------------------or----------------------------
mapped_titles = titles.map do |title|
  title.split(" ").map(&:capitalize).join(" ")
end

# RETURNS ALL RATINGS THAT MATCH THE CONDITIONS
ratings.select do |rating|
  rating == "pg" || rating == "pg-thirteen"
end
# returns blank if condition does not match #
mapped_ratings.select do |rating|
  rating == "pg" || rating == "pg-13"
end

