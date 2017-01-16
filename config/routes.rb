Rails.application.routes.draw do
  resources :locations
  resources :reviews
  resources :companies
  resources :users
end
