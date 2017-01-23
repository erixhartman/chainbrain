Rails.application.routes.draw do
  resources :locations, only: [:index, :show, :new, :create, :edit, :update]
  resources :reviews, only: [:show, :new, :create]
  resources :companies, only: [:index, :show, :new, :create]
  resources :users, only: [:new, :create, :show]
end
