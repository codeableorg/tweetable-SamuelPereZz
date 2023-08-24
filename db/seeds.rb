puts "seeding data"

puts "Sedding admin and users"
admin = User.create(name: "admin", username: "adminpro", email: "admin@mail.com", password: "supersecret", password_confirmation: "supersecret")

user1 = User.create(name: "user1", username: "user1pro", email: "user1@mail.com", password: "123456", password_confirmation: "123456")
user2 = User.create(name: "user2", username: "user2pro", email: "user2@mail.com", password: "123456", password_confirmation: "123456")
user3 = User.create(name: "user3", username: "user3pro", email: "user3@mail.com", password: "123456", password_confirmation: "123456")
user4 = User.create(name: "user4", username: "user4pro", email: "user4@mail.com", password: "123456", password_confirmation: "123456")

puts "Seeding tweets"

tweet1 = Tweet.create(body: "Proueba de tweet1", user_id: user1.id)
tweet2 = Tweet.create(body: "Proueba de tweet2", user_id: user2.id)
tweet3 = Tweet.create(body: "Proueba de tweet3", user_id: user3.id)
tweet4 = Tweet.create(body: "Proueba de tweet4", user_id: user4.id)
tweet5 = Tweet.create(body: "Proueba de tweet5", user_id: user3.id)

puts "Seeding subtweets"

stweet1 = Tweet.create(body: "Proueba de tweet", user_id: user1.id, replied_to_id: tweet2.id)
stweet2 = Tweet.create(body: "Proueba de tweet", user_id: user2.id, replied_to_id: tweet3.id)
stweet3 = Tweet.create(body: "Proueba de tweet", user_id: user3.id, replied_to_id: tweet5.id)
stweet4 = Tweet.create(body: "Proueba de tweet", user_id: user4.id, replied_to_id: tweet4.id)
stweet5 = Tweet.create(body: "Proueba de tweet", user_id: user2.id, replied_to_id: tweet1.id)

puts "Sedding likes"

like1 = Like.create(user_id:user1.id, tweet_id: stweet2.id)
like2 = Like.create(user_id:user4.id, tweet_id: stweet5.id)
like3 = Like.create(user_id:user2.id, tweet_id: tweet4.id)
like4 = Like.create(user_id:user1.id, tweet_id: tweet3.id)
like5 = Like.create(user_id:user3.id, tweet_id: stweet1.id)

puts "Finish Sedding"
