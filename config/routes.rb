Rails.application.routes.draw do
  root to: "searches#index"
  post "searches", to: "searches#create"
  get "autocomplete", to: "searches#autocomplete"

  resources :houses, only: :create
  resources :users, only: :create
end
