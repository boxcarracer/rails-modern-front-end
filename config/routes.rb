Rails.application.routes.draw do
  resources :venues
  resource :schedule
  resources :shopping_carts
  resources :favorites
  resources :ticket_orders
  resources :tickets
  resources :gigs
  resources :concerts
  resources :bands

  devise_for :users

  root "schedules#show"
end
