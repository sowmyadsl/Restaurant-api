Rails.application.routes.draw do
  get 'home' => 'v1/restaurants#index'
  get 'random' => 'v1/restaurants#random'

  concern :api_base do
    resources :restaurants
  end

  namespace :v1 do
    concerns :api_base
  end

end
