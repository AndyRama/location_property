Rails.application.routes.draw do
  devise_for :users

  root to: 'public#main'
  resources :public
  

  resources :posts
  resources :properties
 

  get "/blog" => "posts#latest", as: :blog

  get "/users" => "admin#users", as: :users

  get "/dashboard" => 'dashboard#index', as: :dashboard
  get "/profile/:id" => 'dashboard#profile', as: :profile

  post "/agent/message" =>  "properties#email_agent", as: :email_agent
end
