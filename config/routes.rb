Rails.application.routes.draw do
  root to: 'public#main'
  resources :public
  
  devise_for :users
  resources :posts
  resources :properties
 

  get "/blog" => "posts#latest", as: :blog

  get "/users" => "admin#users", as: :users

  get "/dashboard" => 'dashboard#index', as: :dashboard
  get "/profile/:id" => 'dashboard#profile', as: :profile

  post "/agent/message" =>  "properties#email_agent", as: :email_agent
end
