Rails.application.routes.draw do
  devise_for :users

  # resources :public  
  resources :posts
  resources :properties

  get "/public" => "public#main", as: :public

  get "/blog" => "posts#latest", as: :blog

  get "/users" => "admin#users", as: :users

  get "/dashboard" => 'dashboard#index', as: :dashboard
  get "/profile/:id" => 'dashboard#profile', as: :profile

  post "/agent/message" =>  "properties#email_agent", as: :email_agent

  root to: 'public#main'
end
