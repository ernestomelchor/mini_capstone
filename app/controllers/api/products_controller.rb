class Api::ProductsController < ApplicationController
  def products_action
    @products = Product.all
    render "all_products.json.jb"
  end

  def first_product_action
    @products = Product.all
    @first_product = Product.first
    render "first_product.json.jb"
  end

  def second_product_action
  end

  def third_product_action
  end

  def fourth_product_action
  end
end
