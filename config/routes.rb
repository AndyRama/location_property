Rails.application.routes.draw do
  devise_for :users

  resources :public  
  resources :posts
  resources :properties
  
  # get "/compte" => "pages#compte", as: :compte
  
  get "/contact" => "pages#contact", as: :contact

  get "/feature" => "pages#feature", as: :feature

  get "/for_sale" => "pages#for_sale", as: :for_sale

  get "/advertise" => "pages#advertise", as: :advertise

  get "/blog" => "posts#latest", as: :blog

  get "/users" => "admin#users", as: :users

  get "/dashboard" => 'dashboard#index', as: :dashboard

  get "/profile/:id" => 'dashboard#profile', as: :profile

  post "/agent/message" =>  "properties#email_agent", as: :email_agent

  root to: 'public#main'
end
