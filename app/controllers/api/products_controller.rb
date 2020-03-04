class Api::ProductsController < ApplicationController
  def products_action
    @message = "Hi"
    render "all_products.json.jb"
  end
end
