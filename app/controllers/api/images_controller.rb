class Api::ImagesController < ApplicationController
  def index
    @images = Image.all
    render "index.json.jb"
  end

  def show
    user_input = params["id"]
    @images = Image.find_by(id: user_input)
    render "show.json.jb"
  end
end
