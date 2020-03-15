Rails.application.routes.draw do
  namespace :api do
    post "/users" => "users#create"

    post "/sessions" => "sessions#create"

    get "/products" => "products#index"
    post "/products" => "products#create"
    get "/products/:id" => "products#show"
    patch "/products/:id" => "products#update"
    delete "/products/:id" => "products#destroy"
  end

  namespace :api do
    get "/suppliers" => "suppliers#index"
    get "/suppliers/:id" => "suppliers#show"
  end

  namespace :api do
    get "/images" => "images#index"
    get "/images/:id" => "images#show"
  end
end
