Rails.application.routes.draw do
  resources :customers
  resources :orders

  root to: 'customers#index'

  delete "/customers/customerAndOrders/:id", to: "customers#destroy_with_orders"

end
