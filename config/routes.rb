Rails.application.routes.draw do
  root 'drones#index'
  resources :drones, expect: [:index] do
    get 'request', to: 'drones#request'
  end
  resources :mypage, only: [:index]
end