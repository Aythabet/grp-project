Rails.application.routes.draw do

  devise_scope :user do
    get '/profile', to: 'devise/registrations#edit'
  end

  devise_for :users
  root to: 'escorts#index'
  resources :escorts, only: [:show, :index] do
    resources :reservations, only: [:new, :create]
  end
  resources :reservations, only: [:show, :index] do

    resources :reviews, only: [:new, :create]
  end
  post '/profile/', to: 'users#update', as: :user
end




