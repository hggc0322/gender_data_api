class RemoveRegionFromCompanies < ActiveRecord::Migration[5.2]
  def change
    remove_reference :companies, :region, foreign_key: true
  end
end
