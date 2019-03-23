class CreateRegions < ActiveRecord::Migration[5.2]
  def change
    create_table :regions do |t|
      t.string 'name'
      t.string 'median_gender_gap'

      t.timestamps
    end
  end
end
