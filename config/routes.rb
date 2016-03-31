Rails.application.routes.draw do
  root to: "searches#index"
  post "searches", to: "searches#create"
end
