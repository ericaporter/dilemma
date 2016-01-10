Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
 
  root "static_pages#landing_page"
  get "plans", to: "static_pages#plans"
  post "plans", to: "static_pages#plans"
  devise_for :users, controllers: { omniauth_callbacks: 'omniauth_callbacks' }
  resources :users, only: [:index, :show]
  resources :problems do
    get :delete
  end
  resources :comments
  get "tags/:tag", to: "problems#index", as: :tag
  resources :solutions do
    get :cast_vote, on: :member
  end
  resources :votes
  devise_scope :user do
      get "login", to: "devise/sessions#new"
      get "logout", to: "devise/sessions#destroy"
  end
end
