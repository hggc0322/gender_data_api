class AddColumnToCompanies < ActiveRecord::Migration[5.2]
  def change
    add_column :companies, :benefits, :text
  end
end
