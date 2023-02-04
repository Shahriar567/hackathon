# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


15.times do
  Project.create!(longi: Faker::Number.between(from: 2, to: 19).to_s, lati: Faker::Number.between(from: 2, to: 19).to_s, has_assignment: false)
 end
 project_ids = Project.ids
 95.times do
  Assignment.create!(user_id: project_ids.sample, assignment_id: project_ids.sample, stock: Faker::Number.between(from: 2, to: 19).to_s)
 end
