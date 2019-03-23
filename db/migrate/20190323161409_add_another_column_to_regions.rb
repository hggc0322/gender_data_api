class AddAnotherColumnToRegions < ActiveRecord::Migration[5.2]
  def change
    add_column :regions, :mean_wage_gap_change, :decimal
  end
end
