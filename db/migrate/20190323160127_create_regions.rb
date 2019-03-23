class CreateRegions < ActiveRecord::Migration[5.2]
  def change
    create_table :regions do |t|
      t.string :name
      t.boolean :higher_than_2016_national_average
      t.integer :rank_2016
      t.string :top_1
      t.string :top_2
      t.string :top_3
      t.string :bottom_1
      t.string :bottom_2
      t.string :bottom_3

      t.timestamps
    end
  end
end
