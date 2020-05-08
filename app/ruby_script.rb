require "http"

puts "Welcome to the Product app!"
response = HTTP.get("http://localhost:3000/api/products")
products = response.parse

show = products.map do |product|
  {
    name: product["name"],
    price: product["price"],
    description: product["description"],
  }
end

puts show
