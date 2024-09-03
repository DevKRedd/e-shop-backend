Rails.application.routes.draw do
  resources :products, only: [:index]
  get 'categories', to: 'products#categories'
end
