Rails.application.routes.draw do
  namespace :api do
    post "/users" => "users#create"
  end

  namespace :api do
    post "/sessions" => "sessions#create"
  end

  namespace :api do
    get "/products" => "products#index"
    post "/products" => "products#create"
    get "/products/:id" => "products#show"
    patch "/products/:id" => "products#update"
    delete "/products/:id" => "products#destroy"
  end

  namespace :api do
    get "/orders" => "orders#index"
    post "/orders" => "orders#create"
    get "/orders/:id" => "orders#show"
  end

  namespace :api do
    get "/suppliers" => "suppliers#index"
    get "/suppliers/:id" => "suppliers#show"
  end

  namespace :api do
    get "/images" => "images#index"
    get "/images/:id" => "images#show"
  end

  namespace :api do
    post "/carted_products" => "carted_products#index"
  end
end
