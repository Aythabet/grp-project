Rails.application.routes.draw do
  devise_for :users
  root to: 'escorts#index'
  resources :escorts, except: [:new, :create]
end
