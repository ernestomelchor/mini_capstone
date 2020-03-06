class Api::ProductsController < ApplicationController
  def index
    @products = Product.all.order("id")
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
    @product = Product.find_by(id: params["id"])
    @product.name = params["name"] || @product.name # If the previous condition is falsey, move forward, meaning keep the previous @product.name the same
    @product.price = params["price"] || @product.price
    @product.image_url = params["image_url"] || @product.image_url
    @product.description = params["description"] || @product.description
    @product.amount = params["amount"] || @product.amount
    @product.save
    render "update.json.jb"
  end

  def destroy
  end
end
