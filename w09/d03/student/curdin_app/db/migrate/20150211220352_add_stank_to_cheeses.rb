class AddStankToCheeses < ActiveRecord::Migration
  def change
    add_column :cheeses, :stank_level, :integer
  end
end
