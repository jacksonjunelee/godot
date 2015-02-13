# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Author.destroy_all
Book.destroy_all
Character.destroy_all

lee = Author.create(name:"Harper Lee", born_on: 19260428, died_on:00000000, gender:"female", has_pseudonym: "")
twain = Author.create(name:"Mark Twain", born_on: 18351120, died_on: 19100421, gender:"male", has_pseudonym: "true")
king = Author.create(name:"Stephen King", born_on: 19470921, died_on: 00000000, gender:"male", has_pseudonym: "")

mockingbird = Book.create(title:"To Kill A Mockingbird", released_on: 19600711, genre:"Southern Gothic")
finn = Book.create(title:"Adventures of Huckleberry Finn", released_on:18850201 , genre:"Satirical Novel")
shining = Book.create(title:"The Shining", released_on:, genre:"Horror")

boo = Character.create(name:"Boo Radley", gender:"male", quirk:"super shy")
jim = Character.create(name:"Jim", gender:"male", quirk:"escaped former slave")
danny = Character.create(name:"Danny Torrance", gender:"male", quirk:"telepathic")
