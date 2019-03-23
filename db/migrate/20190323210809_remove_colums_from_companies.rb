class RemoveColumsFromCompanies < ActiveRecord::Migration[5.2]
  def change
    remove_column :companies, :median_gender_gap_2019, :decimal
  end
end
