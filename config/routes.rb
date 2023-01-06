Rails.application.routes.draw do
  resources :venues
  resource :schedule
  resources :shopping_carts
  resources :favorites
  resources :ticket_orders
  resources :tickets
  devise_for :users
  resources :gigs
  resources :concerts
  resources :bands

  root "schedules#show"
end
