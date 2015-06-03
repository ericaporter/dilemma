Rails.application.routes.draw do
  # root to: 'static_pages#home'
  root "problems#index"
  devise_for :users, controllers: { omniauth_callbacks: 'omniauth_callbacks' }
  resources :users, only: [:index, :show]
  resources :problems
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
