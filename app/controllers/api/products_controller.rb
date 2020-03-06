class Api::ProductsController < ApplicationController
  def index
    @products = Product.all
    render "index.json.jb"
  end

  def create
    @product = Product.new({ name: params["name"], price: params["price"], image_url: params["image_url"], description: params["description"], amount: params["amount"] })
    @product.save
    render "create.json.jb"
  end

  def show
    user_input = params["id"]
    @product = Product.find_by(id: user_input)
    render "show.json.jb"
  end

  def update
    # Please resolve how to update an existing product
    product = Product.find_by(id: params["id"])
    product.name = params["name"]
    product.price = params["price"]
    product.image_url = params["image_url"]
    product.description = params["description"]
    product.amount = params["amount"]
    product.save
    @product = product
    render "update.json.jb"
  end
end
