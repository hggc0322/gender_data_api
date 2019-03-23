class AddColumnsToRegions < ActiveRecord::Migration[5.2]
    def change
      change_table :regions do |t|
        t.remove :median_gender_gap
        t.boolean 'compare_to_2019_mean'
        t.integer 'gender_gap_rank_2019'
        t.decimal 'mean_wage_gap_2019'
        t.string 'top_1_company'
        t.string 'top_2_company'
        t.string 'top_3_company'
        t.string 'bottom_1_company'
        t.string 'bottom_2_company'
        t.string 'bottom_3_company'
    end
  end
end
