class Product < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :price, presence: true, numericality: { greater_than: 0 }
  validates :description, presence: true, length: { minimum: 10, maximum: 500 }

  belongs_to :supplier

  has_many :images
  has_many :carted_products
  has_many :orders, through: :carted_products

  has_many :category_products
  has_many :categories, through: :category_products

  def discount
    price < 250
  end

  def tax
    price * 0.09
  end
end
