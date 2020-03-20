class Order < ApplicationRecord
  belongs_to :user
  # belongs_to :product #Because I removed the product_id and quantity columns in the last two migrations, I no longer need this line of code.
  has_many :carted_products
  has_many :products, through: :carted_products
end
