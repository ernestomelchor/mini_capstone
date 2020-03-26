class ProductsController < ApplicationController
  def index
    @products = Product.all
    render "index.html.erb"
  end

  def show
    @product = Product.find_by(id: params[:id])
    render "show.html.erb"
  end

  def new
    render "new.html.erb"
  end

  def create
    @product = Product.new(
      name: params[:name],
      price: params[:price],
      description: params[:description],
      amount: params[:amount],
      supplier_id: params[:supplier_id],
    )
    @product.save
    redirect_to "/products/#{@product.id}"
  end

  def edit
    @product = Product.find_by(id: params[:id])
    render "edit.html.erb"
  end

  def update
    @product = Product.find_by(id: params[:id])
    @product.name = params[:name] || @product.name # If the previous condition is falsey, move forward, meaning keep the previous @product.name the same
    @product.price = params[:price] || @product.price
    @product.description = params[:description] || @product.description
    @product.amount = params[:amount] || @product.amount
    @product.supplier_id = params[:supplier_id] || @product.supplier_id
    if @product.save
      redirect_to "/products/#{@product.id}"
    else
      render "edit.html.erb"
    end
  end

  def destroy
    product = Product.find_by(id: params[:id])
    product.destroy
    redirect_to "/products"
  end
end
