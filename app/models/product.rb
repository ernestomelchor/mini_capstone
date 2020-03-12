class Product < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :price, presence: true, numericality: { greater_than: 0 }
  validates :description, presence: true, length: { minimum: 10, maximum: 500 }

  def supplier
    Supplier.find_by(id: supplier_id)
  end

  def discount
    price < 250
  end
end
