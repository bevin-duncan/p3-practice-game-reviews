puts "Clearing data..."
User.destroy_all
Game.destroy_all
Category.destroy_all

Faker::Game.unique.clear

puts "Creating users..."
10.times do
    User.create(username: Faker::Internet.username, email: Faker::Internet.email)
end

puts "Creating categories..."
categories = ["First-person shooter", "Puzzle", "Platformer", "RPG", "MMO", "Adventure"]
categories.each do |category|
    Category.create(name: category)
end

puts "Creating games..."
10.times do 
    Game.create(name: Faker::Game.unique.title, platform: Faker::Game.platform, category: Category.all.sample)
end

puts "Creating reviews..."
reviews =  ["Lame", "Awesome", "Fuck this", "Can't stop playing", "Boring", "Best game ever", "Were the devs asleep when they made this?", "Kick Ass", "My life is over"]

reviews.each do |review|
    Review.create(content: review, rating: rand(0..10), user_id: User.ids.sample, game_id: Game.ids.sample)
end
# TODO: Create seeds for the models/migrations you have added

puts "Database seeded successfully!"