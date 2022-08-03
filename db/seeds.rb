# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
@admin1 = Admin.create(name: 'Admin 1', email: 'admin1@educatly.com')
Product.create(name: 'Book 1', price: 10.00, description: 'This is the first book', admin: @admin1)
Product.create(name: 'Book 2', price: 20.00, description: 'This is the second book', admin: @admin1)
Product.create(name: 'Book 3', price: 30.00, description: 'This is the third book', admin: @admin1)
Product.create(name: 'Book 4', price: 40.00, description: 'This is the fourth book', admin: @admin1)
