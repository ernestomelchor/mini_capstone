Rails.application.routes.draw do
  get "/products" => "products#index"
  get "/products/new" => "products#new"
  post "/products" => "products#create"
  get "/products/:id" => "products#show"
  get "/products/:id/edit" => "products#edit"
  patch "/products/:id" => "products#update"
  delete "products/:id" => "products#destroy"

  namespace :api do
    post "/users" => "users#create"

    post "/sessions" => "sessions#create"

    get "/products" => "products#index"
    post "/products" => "products#create"
    get "/products/:id" => "products#show"
    patch "/products/:id" => "products#update"

    get "/orders" => "orders#index"
    post "/orders" => "orders#create"
    get "/orders/:id" => "orders#show"
    delete "/orders/:id" => "orders#destroy"

    get "/suppliers" => "suppliers#index"
    get "/suppliers/:id" => "suppliers#show"

    get "/images" => "images#index"
    get "/images/:id" => "images#show"

    get "/carted_products" => "carted_products#index"
    post "/carted_products" => "carted_products#create"
    delete "/carted_products/:id" => "carted_products#destroy"
  end
end
