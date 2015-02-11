class CreatePurchases < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.decimal  "purchase_price"
      t.decimal  "amount", precision: 6,
      t.references "user"
      t.references "movie"
      t.timestamps
    end
  end
end
