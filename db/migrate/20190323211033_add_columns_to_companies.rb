class AddColumnsToCompanies < ActiveRecord::Migration[5.2]
  def change
    add_column :companies, :hourly_median_gender_gap_2018, :float
    add_column :companies, :bonus_median_gender_gap_2018, :float
  end
end
