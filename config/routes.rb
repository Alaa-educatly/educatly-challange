Rails.application.routes.draw do
  resources :products
  resources :admins, only: %i[ new show create ]
  root 'products#index'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
end
