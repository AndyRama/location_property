Rails.application.routes.draw do
  devise_for :users
  resources :posts
  resources :properties
 
  root to: 'public#main'

  get '/blog' => 'posts#latest', as: :blog

  get '/users' => 'admin#users', as: :users

  get "/dashboard" => 'dashboard#index', as: :dashboard
  get "/profile/:id" => 'dashboard#profile', as: :profile

  post "/agent/message" =>  "properties#email_agent", as: :email_agent

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
