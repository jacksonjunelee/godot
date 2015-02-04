require 'pry'
require 'pg'

db_connection = PG.connect(dbname: 'shopping_db')

stores = ["Sears", "Disney Store", "JC Penney"]

drop = db_connection.exec("DROP TABLE IF EXISTS stores;")

stores = db_connection.exec("CREATE TABLE stores(id SERIAL PRIMARY KEY, name VARCHAR(50) NOT NULL, slogan VARCHAR NOT NULL);")

receipts_stores = db_connection.exec("")
binding.pry

store_id = db_connection.exec("ALTER TABLE receipts ADD COLUMN store_id ")
