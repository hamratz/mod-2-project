# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Item.destroy_all
Favorite.destroy_all
Category.destroy_all

User.create(name: "esma", first_name: "esma", last_name: "guest", email: "email", address: "address", city: "city", state: "state", zip_code: "123", password: "password", password_confirmation: "password")
User.create(name: "marty", first_name: "marty", last_name: "guest", email: "email", address: "address", city: "city", state: "state", zip_code: "123", password: "password", password_confirmation: "password")
User.create(name: "james", first_name: "james", last_name: "guest", email: "email", address: "address", city: "city", state: "state", zip_code: "123", password: "password", password_confirmation: "password")
User.create(name: "guest", first_name: "guest", last_name: "guest", email: "email", address: "address", city: "city", state: "state", zip_code: "123", password: "password", password_confirmation: "password")
# james = User.create(name: "James", email: "james@gmail.com", password:"pwd", password_confirmation: "pwd" )
# marty = User.create(name: "marty", email: "marty@gmail.com", password:"pwd", password_confirmation: "pwd")
# esma = User.create(name: "esma", email: "esma@gmail.com", password:"pwd", password_confirmation: "pwd")

user_id = User.all.map { |user| user.id }


sweet = Category.create(name: "Sweet")
savory = Category.create(name: "Savory")

category_id = Category.all.map { |category| category.id }

50.times do
    Item.create(name: Faker::Food.dish, description: Faker::Food.description, price:rand(1.25..30.0).round(2), category_id: category_id.sample)
end

item_id = Item.all.map { |item| item.id }


15.times do
    Favorite.create(user_id: user_id.sample, item_id:item_id.sample )
end

# apple = Item.create(name: "Apple", category_id: sweet.id)
# banana = Item.create(name: "Banana", category_id: sweet.id)
# chip = Item.create(name: "Chip", category_id: savory.id)
# fav1 = Favorite.create(user_id: james.id, item_id: banana.id)
# fav2 = Favorite.create(user_id: james.id, item_id: chip.id)
