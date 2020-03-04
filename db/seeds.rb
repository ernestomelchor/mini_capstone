# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

product = Product.new({ name: "Product 1", price: 2.00, image_url: "http://www.example.com/product_1", description: "This product is the most affordable option in our line of products.", amount: 50 })
product.save
product = Product.new({ name: "Product 2", price: 3.00, image_url: "http://www.example.com/product_2", description: "This product is long-lasting without hurting your pocket.", amount: 100 })
product.save
product = Product.new({ name: "Product 3", price: 5.00, image_url: "http://www.example.com/product_3", description: "This product is made out of high-quality materials and is a must for all who enjoy our line of products.", amount: 100 })
product.save
product = Product.new({ name: "Product 4", price: 10.00, image_url: "http://www.example.com/product_4", description: "This product is for those who seek the finest things in life.", amount: 75 })
product.save
rails db: seed
