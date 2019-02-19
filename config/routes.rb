Rails.application.routes.draw do
  devise_for :users
  root to: 'escorts#index'
  resources :escorts, except: [:new, :create, :update, :edit] do
    resources :reservations, only: [:index, :show, :new, :create]
  end
end
