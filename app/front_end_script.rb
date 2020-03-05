require "http"

puts "Welome to the Product app! Here is our product line:"
response1 = HTTP.get("http://localhost:3000/api/products_url")
all_products = response1.parse

puts all_products["products"][0]["name"]
puts all_products["products"][1]["name"]
puts all_products["products"][2]["name"]
puts all_products["products"][3]["name"]
puts
puts "Which one would you like more information about?"

# puts "Would you like to get a random fortune read to you today?"

# while true
#   user_answer = gets.chomp.downcase
#   puts
#   if user_answer == "yes"
#     puts fortunes["Fortune"]
#     break
#   elsif user_answer == "no"
#     puts "Okay. Have a great day."
#     break
#   else
#     puts "Please type yes or no and press Enter:"
#   end
# end

# puts
# puts "By the way, these are your lucky lotto numbers for today:"
# response2 = HTTP.get("http://localhost:3000/api/random_numbers")
# lotto = response2.parse
# puts
# p lotto["six_random_numbers"]
# puts

# puts "Let's sing 99 bottles of beer on the wall, shall we?"
# response3 = HTTP.get("http://localhost:3000/api/99_bottles_of_beer")
# lyrics = response3.parse

# while true
#   user_answer = gets.chomp.downcase
#   puts
#   if user_answer == "yes"
#     p lyrics["lyrics"]
#     break
#   elsif user_answer == "no"
#     puts "Okay. Have a great day."
#     break
#   else
#     puts "Please type yes or no and press Enter:"
#   end
# end

# puts "Thank you for playing"
