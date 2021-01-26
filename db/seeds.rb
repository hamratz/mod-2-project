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

james = User.create(name: "James")

sweet = Category.create(name: "Sweet")
savory = Category.create(name: "Savory")

apple = Item.create(name: "Apple", category_id: sweet.id)
banana = Item.create(name: "Banana", category_id: sweet.id)
chip = Item.create(name: "Chip", category_id: savory.id)



fav1 = Favorite.create(user_id: james.id, item_id: banana.id)
fav2 = Favorite.create(user_id: james.id, item_id: chip.id)
