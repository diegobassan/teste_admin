Rails.application.routes.draw do
  resources :groups
  resources :products
  devise_for :users
  resources :clients
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
