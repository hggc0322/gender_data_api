# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'csv'

Contact.destroy_all

file_name = ENV["DATA_FILE"].present? ? ENV["DATA_FILE"] : 'replace with actual name.csv'

csv_path = File.dirname(__FILE__) + '/' + file_name
puts "Importing data from #{csv_path}"
contacts = []
# let the database autogenerate the primary key id (hence remove id field)
CSV.foreach(csv_path, headers: true) do |row|
 contact_row = row.to_h
 contact_row.delete("id")
 contact = Contact.new(contact_row.symbolize_keys)
 contact.save
end
