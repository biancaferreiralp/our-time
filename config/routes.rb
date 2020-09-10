Rails.application.routes.draw do

  devise_for :users
  root to: 'pages#home'

  resources :users, only: :show
  
  resources :chatrooms, only: [:index, :show] do
    resources :messages, only: :create
  end

  resources :teachers, only: [:index, :show, :new, :create, :edit, :update]
end
