# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'csv'

Company.delete_all
Region.delete_all

region_text = File.read(Rails.root.join('db', 'table2_regions_addfracmale.csv'))

region_csv = CSV.parse(region_text, headers: true, encoding: 'ISO-8859-1')

region_csv.each do |row|
  region_row = row.to_h
  Region.create!(region_row.symbolize_keys)
end

puts "There are #{Region.count} rows"

company_text = File.read(Rails.root.join('db', 'table1_companies.csv'))

company_csv = CSV.parse(company_text, headers: true, encoding: 'ISO-8859-1')

company_csv.each do |row|
  company_row = row.to_h
  Company.create!(company_row.symbolize_keys)
end

puts "There are #{Company.count} rows"
