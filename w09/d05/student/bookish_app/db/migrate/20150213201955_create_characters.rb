class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.string :name, null: false
      t.string :gender, null: false
      t.string :quirk, presence: :unique
    end
  end
end
