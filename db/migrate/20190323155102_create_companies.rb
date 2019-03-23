class CreateCompanies < ActiveRecord::Migration[5.2]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :address
      t.string :industry
      t.decimal :median_gender_gap_2019

      t.timestamps
    end
  end
end
