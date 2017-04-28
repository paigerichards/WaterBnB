Rails.application.routes.draw do

  resources :listings
  resources :bookings
  devise_for :users
  
end
