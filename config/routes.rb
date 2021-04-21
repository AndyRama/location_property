Rails.application.routes.draw do
  devise_for :users

  resources :public  
  resources :posts
  resources :properties

  
  # get "/for_rent" => "properties#index", as: :for_rent
  # get "/For_Sale" => "property#latest", as: :for_sale
  # get "Advertise" => "#", as: :advertise
  # get "/Contact" => "#", as: :contact

  get "/blog" => "posts#latest", as: :blog

  get "/users" => "admin#users", as: :users

  get "/dashboard" => 'dashboard#index', as: :dashboard

  get "/profile/:id" => 'dashboard#profile', as: :profile

  post "/agent/message" =>  "properties#email_agent", as: :email_agent

  root to: 'public#main'
end
