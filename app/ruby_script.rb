require "http"

puts "Welcome to the Product app!"
response = HTTP.get("http://localhost:3000/api/products")
products = response.parse

products.map do |product|
  {
    product.name,
    product.price,
    product.description,
  }
end

