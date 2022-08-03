Rails.application.routes.draw do
  resources :products
  root "products#index"
  get "admin/:id", to: "admin#show", as: :admin
end
