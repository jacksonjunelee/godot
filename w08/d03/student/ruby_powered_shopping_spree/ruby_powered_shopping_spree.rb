require 'pry'
require 'pg'

pg_conn = PG.connect({:dbname =>'shopping_db', :host => 'localhost'})
#======================
# Starter Data
#======================
stores = ["Street Vendor", "The White House Gift Shop", "Nordstrom Rack", "The Cake Ambiance"]

quantities = [5, 10, 15, 2, 7]

prices = [4.99, 9.99, 50.00, 75.00, 100.00]

items = [
  "Gummy Cola Bottle",
  "Guava Candy",
  "Taco",
  "Bibimbop",
  "Burrito",
  "Channa Masala",
  "Lettuce Wrap",
  "PIZZA",
  "Cheese",
  "(Disney Soundtrack)",
  "Whiskey",
  "Athletic Socks",
  "Teach Like a Champion",
  "Practice Perfect"
]

# date = Date.new

# spree = pg_conn.exec("SELECT * FROM receipts;")

# random_spree = "INSERT INTO receipts(store, item, number_of_items, price, buy_date) VALUES ($1, $2, $3, $4, $5);"

# pg_conn.exec_params(random_spree, [stores, quantities, prices, items, date])

# random_spree = [stores.sample, quantities.sample, prices.sample, items.sample]

# Using this connection, add 5 purchases to the receipts table, *randomly* assigning a store, quantity, item, and price from the dummy data provided in `ruby_powered_shopping_spree.rb`. The date purchased should be today's date.
  5.times do
    pg_conn.exec_params("INSERT INTO receipts(store, item, number_of_items, price, buy_date) VALUES ($1, $2, $3, $4, $5);", [stores.sample, items.sample, quantities.sample, prices.sample, 'Feb 4 2015'])
  end

# Peter calls you and tells you he traded in his Packers Jersey (purchased at Sears on March 23rd) for a Giants Jersey. He wants the receipts database to reflect the change.
  pg_conn.exec("UPDATE receipts SET item = 'Giants Jersey' WHERE id = 15;")

# Peter calls again, and tells you Sears dropped the price of the PS4 from $400 to $350, and they gave him the discount. He wants the receipts table to reflect the change.
  pg_conn.exec("UPDATE receipts SET price = 350.00 WHERE id = 1;")

# 1. Peter calls again: he went over his monthly budget, and immediately felt bad about the purchases he made on his shopping spree, so he went around randomly returning 8 of his purchases. Thus, make 8 random returns in your Ruby program. Reflect this in the database.
8.times do
  pg_conn.exec_params("UPDATE receipts SET price = 0.00, returned = true WHERE id = $1", [rand(1..19)])
end
# 1. Close your database connection.
  pg_conn.close
