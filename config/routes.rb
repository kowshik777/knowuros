Rails.application.routes.draw do
  get 'home/index'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users, controllers: { registrations: "registrations" }
  resources :comments
  resources :posts
  resources :contacts, only: [:new, :create]
  resources :searches
  resources :home, only: [:index]
    root 'home#index'
end