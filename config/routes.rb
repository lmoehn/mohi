Rails.application.routes.draw do

  root to: 'welcome#index'
  get 'login', to: 'sessions#new', as: 'login'
  delete 'logout', to: 'sessions#destroy', as: 'logout'

  resources :users
  resources :sessions
  resources :travel_forms
  resources :signed_documents
end
