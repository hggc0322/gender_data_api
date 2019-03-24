class AddColumnsfractionsToRegions < ActiveRecord::Migration[5.2]
  def change
    add_column :regions, :frac_top_1, :decimal
    add_column :regions, :frac_top_2, :decimal
    add_column :regions, :frac_top_3, :decimal
    add_column :regions, :frac_bottom_1, :decimal
    add_column :regions, :frac_bottom_2, :decimal
    add_column :regions, :frac_bottom_3, :decimal
  end
end
