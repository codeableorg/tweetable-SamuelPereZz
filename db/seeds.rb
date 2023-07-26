# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Start seeding"
User.destroy_all

puts "Seeding User Member"
User.find_or_create_by(username: "menber_test") do |user|
  user.email = "member@test.com"
  user.name = "User"
  user.password = "123456"
end

puts "Seeding User Admin"
User.find_or_create_by(username: "user_admin") do |user|
  user.email = "Admin@test.com"
  user.name = "Admin"
  user.password = "123456"
  user.role = "admin"
end