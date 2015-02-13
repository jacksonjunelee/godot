class CreatePokemonTable < ActiveRecord::Migration
  def change
    create_table :pokemon_tables do |t|
      t.string :name, presence: :unique
      t.integer :weight, null: false
      t.integer :height, null: false
      t.string :image_url, null: false
      t.integer :happiness_level, null: false
    end
  end
end
