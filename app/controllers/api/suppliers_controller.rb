class Api::SuppliersController < ApplicationController
  def index
    @suppliers = Supplier.all
    render "index.json.jb"
  end

  def show
    user_input = params["id"]
    @supplier = Supplier.find_by(id: user_input)
    render "show.json.jb"
  end
end
