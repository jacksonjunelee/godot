require 'pry'
require_relative 'bond_data'

movie_gross = []
movie_gross = :gross
BOND_DATA.each {|movie_gross| movie_gross.sum(movie_gross[:gross])}

binding.pry

# sum = 0
# BOND_DATA.each { |movie_gross| sum+=movie_gross }

# sum = 0
# [1, 2, 3].each do |i|
#   sum += i
# end

# puts sum

# 2. Create a new array with the names of the all actors who have ever played Bond, but with no duplicates. (One Roger Moore is more than enough.) Assign it to a sensibly-named variable.
bonds = :actor
BOND_DATA.each {|bonds| puts bonds[:actor]}
BOND_DATA.each {|person| bonds_actors.push( person[:actor])}
