class AddColumnsToRegions < ActiveRecord::Migration[5.2]
  def change
    add_column :regions, :median_wage_gap_change, :decimals
  end
end
