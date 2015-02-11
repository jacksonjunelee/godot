class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :login, unique: true
      t.datetime :born_on, null: false
      t.decimal :balance, precision: 4, scale: 2, default: 0.0
      t.timestamps null: false

    end
  end
end
