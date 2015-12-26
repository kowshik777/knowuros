Rails.application.routes.draw do
  root 'home#index'
  get "home/index", to: redirect("/know-your-operating-system")
  get "/know-your-operating-system", to: "home#index"
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users, controllers: { registrations: "registrations" }
  resources :comments
  resources :posts, only: [:new, :index]
  get "posts/:id", to: redirect("/%{id}")
  resources :posts, :path => '', except: [:new, :index]
  resources :posts
  resources :contacts, only: [:new, :create]
  resources :searches
  resources :home, only: [:index]
end