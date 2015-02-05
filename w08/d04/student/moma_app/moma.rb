# Return all Artists
artists = Artist.all
# Return all Paintings
paintings = Painting.all
# Return the artist with an id of 2
artists.where(id: 2)
# Return the artist with a name of "Vincent Van Gogh"
artists.where(name: "Vincent Van Gogh")
# Return all the artists who are "Spanish"
artists.find_by({nationality: "Spanish"})
# Return the painting with an id of 1
paintings.find_by(id: 1)
# Return the painting with a name of "Guernica"
paintings.find_by(title: "Guernica")
# Return all the paintings that "Pablo Picasso" painted

# Return the artist of "Guernica"

# Change Vincent Van Gogh's nationality to "American"

# Change "Starry Night" to be one of Pablo Picasso's paintings
