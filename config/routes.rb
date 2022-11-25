Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :steps, only: [:show, :new, :create] do
    resources :user_steps, only: :create
  end
  resources :user_steps, only: :update
end
