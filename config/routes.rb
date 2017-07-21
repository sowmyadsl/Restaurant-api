Rails.application.routes.draw do
  get 'home' => 'restaurants#index'
  get 'random' => 'restaurants#random'
  resources :restaurants
end
