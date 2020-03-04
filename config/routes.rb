Rails.application.routes.draw do
  namespace :api do
    get "/photos" => "products#index"
  end
end
