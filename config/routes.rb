Rails.application.routes.draw do

  get 'worker_search/input'
  get 'worker_search/output'
  get 'work_search/input'
  get 'work_search/output'
  get 'allsearches/output'
  resources :searchers
  get 'home/home_page'
  get 'allworks/output'
  resources :works
  get 'users/index'
  get 'users/show'
  devise_for :users, :controllers => {registrations: 'registrations'}
  resources :users
  resources :countries
  resources :cities
  resources :works_searches
  resources :worker_searches
  root 'users#index'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
