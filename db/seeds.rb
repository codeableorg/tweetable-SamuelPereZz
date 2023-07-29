puts "Start Seeding"

puts "Seeding Member Users"
puts "-----------------------"
puts "User1"
User.find_or_create_by(username: "menber_test1") do |user|
  user.email = "member1@test.com"
  user.username = "User1"
  user.name = "User1"
  user.password = "123456"
end

puts "User2"
User.find_or_create_by(username: "menber_test2") do |user|
  user.email = "member2@test.com"
  user.username = "User2"
  user.name = "User2"
  user.password = "123456"
end

puts "User3"
User.find_or_create_by(username: "menber_test3") do |user|
  user.email = "member3@test.com"
  user.name = "User3"
  user.name = "User3"
  user.password = "123456"
end

puts "User4"
User.find_or_create_by(username: "menber_test4") do |user|
  user.email = "member4@test.com"
  user.username = "User4"
  user.name = "User4"
  user.password = "123456"
end

puts "Seeding Admin User"
User.find_or_create_by(username: "user_admin") do |user|
  user.email = "Admin@test.com"
  user.name = "Admin"
  user.password = "123456"
  user.role = "admin"
end

puts "End Seeding"