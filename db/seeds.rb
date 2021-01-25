# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Item.destroy_all
Cart.destroy_all
Favorite.destroy_all

james = User.create(name: "James")

apple = Item.create(name: "Apple")
banana = Item.create(name: "Banana")
chip = Item.create(name: "Chip")

cart1 = Cart.create(item_id: apple, user_id: james)

fav1 = Favorite.create(user_id: james, item_id: banana)
fav2 = Favorite.create(user_id: james, item_id: chip)