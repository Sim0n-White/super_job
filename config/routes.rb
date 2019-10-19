Rails.application.routes.draw do

  get 'home/home_page'
  get 'allworks/output'
  resources :works
  get 'users/index'
  get 'users/show'
  devise_for :users, :controllers => {registrations: 'registrations'}
  resources :users
  resources :countries
  resources :cities
  root 'users#index'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
