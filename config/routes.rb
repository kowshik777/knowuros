Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :contacts
  devise_for :users, controllers: { registrations: "registrations" }
  resources :comments
  resources :posts
  resources :searches
    root 'posts#index'
end