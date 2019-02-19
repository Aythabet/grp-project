Rails.application.routes.draw do

  devise_scope :user do
    get '/profile', to: 'devise/registrations#edit'
  end

  devise_for :users
  root to: 'escorts#index'
  resources :escorts, only: [:index, :show] do
    resources :reservations, only: [:new, :create]
  end
  resources :reservations, only: [:index, :show] do
    resources :reviews, only: [:new, :create]
  end
end



