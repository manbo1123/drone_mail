Rails.application.routes.draw do
  root 'drones#index'
  resources :drones, expect: [:index]
end