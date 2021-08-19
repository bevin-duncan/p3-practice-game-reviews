puts "Clearing data..."
User.destroy_all
Game.destroy_all
Category.destroy_all

puts "Creating users..."
10.times do
    User.create(username: Faker::Internet.username, email: Faker::Internet.email)
end

puts "Creating games..."
10.times do 
    Game.create(name: Faker::Game.title, platform: Faker::Game.platform)
end

puts "Creating categories..."
categories = ["First-person shooter", "Puzzle", "Platformer", "RPG", "MMO", "Adventure"]
categories.each do |category|
    Category.create(name: category)
end

# TODO: Create seeds for the models/migrations you have added

puts "Database seeded successfully!"