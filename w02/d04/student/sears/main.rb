require 'pry'
require_relative 'product'
require_relative 'bike'
require_relative 'shirt'

macys = Shirt.new(20.99, "Gordon Gartrell", "XL","cerulean", "Sezzzay!")
biker_paradise = Bike.new(225, "Schwinn", 15, "8")
binding.pry

