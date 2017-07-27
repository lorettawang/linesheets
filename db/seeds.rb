# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Product.delete_all
Product.create! id: 1, name: "Sazan Dress", price_per_pack: 990.0
Product.create! id: 2, name: "Lauren Top", price_per_pack: 990.0
Product.create! id: 3, name: "Magda Dress", price_per_pack: 990.0

CartStatus.delete_all
CartStatus.create! id: 1, name: "In Progress"
CartStatus.create! id: 2, name: "Placed"
CartStatus.create! id: 3, name: "Shipped"
CartStatus.create! id: 4, name: "Cancelled"