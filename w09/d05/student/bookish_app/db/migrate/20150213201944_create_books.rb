class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title, presence: :unique
      t.integer :released_on, null: false
      t.string :genre, null: false
      # references character_id
    end
  end
end
