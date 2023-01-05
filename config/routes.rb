Rails.application.routes.draw do
  devise_for :users
  resources :gigs
  resources :concerts
  resources :vanues
  resources :bands

  root "concerts#index"
end
