Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get "/products" => "product#index"

  #'home page'

  get "/products/:id" => "product#show"
  #show specific page

  post "/products" => "product#create"
  #creating new product

  patch "/products/:id" => "product#update"

  #update

end
