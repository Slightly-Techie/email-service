# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'csv'

csv_path = Rails.root.join('db', 'seeds', 'users.csv')

CSV.foreach(csv_path, headers: true) do |row|
  User.create!(
    email: row['email'],
    github: row['github'],
    twitter: row['twitter'],
    years_of_experience: row['years_of_experience'].to_i,
    phone: row['phone'],
    name: row['name']
  )
end
