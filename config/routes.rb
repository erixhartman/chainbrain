Rails.application.routes.draw do
  root 'home#index'

  resources :locations, only: [:index, :show, :new, :create, :edit, :update] do
    resources :reviews, only: [:show, :new, :create]
  end
  resources :companies, only: [:index, :show, :new, :create]
  resources :users, only: [:new, :create, :show]
  resources :sessions, only: [:new, :create, :destroy]
end
