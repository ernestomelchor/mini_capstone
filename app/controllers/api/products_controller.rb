class Api::ProductsController < ApplicationController
  def products_action
    @products = Product.all
    render "all_products.json.jb"
  end
end
