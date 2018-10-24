Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'api/auth'
  namespace :api do
    resources :entries, only: [:index, :create, :destroy]
    resources :items, only: [:index, :create]
    resources :contact, only: :create
  end
end
