class CreateAuthors < ActiveRecord::Migration
  def change
    create_table :authors do |t|
      t.string :name, null: false
      t.integer :born_on, null: false
      t.integer :died_on, null: false
      t.string :gender, null: false
      t.boolean :has_pseudonym, default: false
    end
  end
end
