class Supplier < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true
  validates :phone_number, presence: true, uniqueness: true

  has_many :products # This line takes care of lines 8-10 so long as you have designed your database this way

  # def products
  #   Product.where(supplier_id: id)
  # end
end
