class Api::ProductsController < ApplicationController
  def index
    @products = Product.all

    if params[:search]
      @products = @products.where("name ILIKE ?", "%#{params[:search]}%")
    end

    if params[:discount]
      @products = @products.where("price < 250")
    end

    # These lines will work specifically for price
    # if params[:sort] == "price" && params[:sort_order] == "asc"
    #   @products = @products.order(price: :asc)
    # elsif params[:sort] == "price" && params[:sort_order] == "desc"
    #   @products = @products.order(price: :desc)

    # This line of code is more dynamic and will work for other parameters so you can create links in your front-end to help sort
    if params[:sort] && params[:sort_order]
      @products = @products.order(params[:sort] => params[:sort_order])
    else
      @products = @products.order(id: :asc)
    end

    @products = @products.order(id: :asc)
    render "index.json.jb"
  end

  def create
    @product = Product.new({ name: params["name"], price: params["price"], image_url: params["image_url"], description: params["description"], amount: params["amount"] })

    if @product.save
      render "create.json.jb"
    else
      render json: { errors: @product.errors.full_messages }, status: :unprocessable_entity
    end
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
    if @product.save
      render "update.json.jb"
    else
      render json: { errors: @product.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    @product = Product.find_by(id: params["id"])
    @product.destroy
    render "destroy.json.jb"
  end
end
