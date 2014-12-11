require 'pry'
require_relative 'bond_data'

grosses = []
# get all the grosses
BOND_DATA.each do |movie|
  puts movie[:gross]
  gross = movie[:gross].delete!("$").delete!(",").to_i
  grosses.push(gross)
end

sum = 0
grosses.each do |gross|
  sum += gross
end

puts sum

# -------------------------or-----------------------

sum = 0
BOND_DATA.each do |movie|
  # movie = { :title => "Skyfall", :year => 2012, :actor => "Daniel Craig", :gross => "$1,108,561,008" }
  gross = movie[:gross].delete!("$").delete!(",").to_i
  sum += gross
end

puts sum

binding.pry



# # 2. Create a new array with the names of the all actors who have ever played Bond, but with no duplicates. (One Roger Moore is more than enough.) Assign it to a sensibly-named variable.

# bonds = []
# bonds_actors = :actor
# BOND_DATA.each {|bonds_actors| bonds.push( bonds_actors[:actor])}
# puts bonds.uniq!



# # 3. Create a new array of strings from BOND_DATA with the names of all the Bond films. Assign it to a sensibly-named variable.

films = []
film_titles = :title
BOND_DATA.each {|film_titles| films.push( film_titles[:title])}
puts films

# # 4. Create a new array of hashes of only the bond films released on odd-numbered years. Assign it to a sensibly-named variable.
# # --------------HELP!!!------------------
odd_movie_years = []
odd_year = ([:year] / 2 != 0)
BOND_DATA.each {|odd_year| odd_movie_years.push(odd_year([:year] % 2 != 0))}
if odd_year

# # 5. Create a variable called worst_grossing_bond. Use all the tools at your disposal (and perhaps one or two you have yet to discover) to iterate through all the films and return the film with the lowest gross. Store the returned film hash in the variable worst_grossing_bond.

worst_grossing_bond = []
movie_gross = :gross
BOND_DATA.each {|movie_gross| worst_grossing_bond.push( movie_gross[:gross])}
puts worst_grossing_bond.last

# # 6. Similarly, create a variable called highest_grossing_bond and use your programming powers to return the highest grossing film hash, storing it to highest_grossing_bond.

highest_grossing_bond = []
movie_gross = :gross
BOND_DATA.each {|movie_gross| highest_grossing_bond.push( movie_gross[:gross])}
puts highest_grossing_bond.first

# # 7. Create a new array, movies_per_actor, where each value in the array is a hash where the key is the Bond actor's name and the value is their total number of films. For example { "Daniel Craig" => 3 }

# movies_per_actor = []
# movies_per_actor.push({:actor => 3})
