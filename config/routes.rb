Rails.application.routes.draw do
  devise_for :users

  resources :public  
  resources :posts
  resources :properties

  # get "/feature" => "properties#latest", as: :feature

  get "/for_sale" => "pages#for_sale", as: :for_sale

  get "/for_rent" => "pages#for_rent", as: :for_rent
  
  get "/advertise" => "pages#advertise", as: :advertise

  # get "/contact" => "pages#contact", as: :contact

  get "/blog" => "posts#latest", as: :blog

  get "/users" => "admin#users", as: :users

  get "/dashboard" => 'dashboard#index', as: :dashboard

  get "/profile/:id" => 'dashboard#profile', as: :profile

  post "/agent/message" =>  "properties#email_agent", as: :email_agent

  root to: 'public#main'
end
