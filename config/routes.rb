Rails.application.routes.draw do
  devise_for :users
  # root to: 'pages#index'
  root to: 'escorts#index'
  resources :escorts, except: [:new, :create, :update, :edit]
end
