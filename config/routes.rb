Rails.application.routes.draw do
  root to: 'tasks#index'

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  get 'signup', to: 'users#new'

  get 'users/index'
  get 'users/show'
  get 'users/new'
  get 'users/create'
  

  resources :tasks
  resources :users, only: [:index, :show, :new, :create]
end
