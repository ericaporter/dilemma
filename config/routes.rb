Rails.application.routes.draw do
  root to: 'static_pages#home'
  devise_for :users, controllers: { omniauth_callbacks: 'omniauth_callbacks' }
  resources :users, only: [:index, :show]
  resources :problems
  devise_scope :user do
      get "login", to: "devise/sessions#new"
      get "logout", to: "devise/sessions#destroy"
  end
end
