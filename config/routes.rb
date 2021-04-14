Rails.application.routes.draw do
  devise_for :users
  resources :properties

  get '/users' => 'admin#users', as: :users
  get "/dashboard" => 'dashboard#index', as: :dashboard
  # get 'dashboard/reports'

  root to: 'public#main'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
