Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  mount Ckeditor::Engine => '/ckeditor'
  resources :articles
  resources :comments
  resources :contacts
  resources :categories do
    collection do
    get :articlecategory
  end
  end
  devise_for :auth_users, :controllers => { registrations: 'registrations' }
  get 'home/index'
  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
