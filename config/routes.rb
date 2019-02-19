Rails.application.routes.draw do

  devise_scope :user do
    get '/profile', to: 'devise/registrations#edit'
  end

  devise_for :users
  root to: 'escorts#index'
  resources :escorts, except: [:new, :create, :update, :edit]
end



