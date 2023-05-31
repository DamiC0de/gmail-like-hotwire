Rails.application.routes.draw do
  root to: 'emails#index'

  devise_for :users
  resources :emails, only: [:index, :show, :create, :destroy]
  
end
