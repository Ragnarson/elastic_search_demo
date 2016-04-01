Rails.application.routes.draw do
  root to: "searches#index"
  post "searches", to: "searches#create"

  resources :houses, only: :create
  resources :users, only: :create
end
