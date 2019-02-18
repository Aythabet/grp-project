Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :escorts, except: [:new, :create, :update, :edit]
end
