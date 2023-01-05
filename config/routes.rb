Rails.application.routes.draw do
  resources :shopping_carts
  resources :favorites
  resources :ticket_orders
  resources :tickets
  devise_for :users
  resources :gigs
  resources :concerts
  resources :vanues
  resources :bands

  root "concerts#index"
end
