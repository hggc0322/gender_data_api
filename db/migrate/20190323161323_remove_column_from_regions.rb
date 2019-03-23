class RemoveColumnFromRegions < ActiveRecord::Migration[5.2]
  def change
    remove_column :regions, :median_wage_gap_change, :decimal
  end
end
