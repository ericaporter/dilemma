Rails.application.routes.draw do
  devise_for :users
  root to: 'static_pages#home'
  resources :problems
  devise_scope :user do
      get "login", to: "devise/sessions#new"
      get "logout", to: "devise/sessions#destroy"
  end
end
