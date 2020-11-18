Rails.application.routes.draw do
  resources :embassies
  resources :companies
  resources :organizations
  resources :employees
  #dashboard
  resources :dashboard
  get 'dashboard/index'
  #session
  resources :sessions, only: [:new, :create, :destroy]
  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  #user
  resources :users
  #root
  root 'welcome#index'
  #organization
  
  
  
  
end
