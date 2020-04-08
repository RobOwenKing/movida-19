Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :posts
  resources :messages, only: [:new, :create]
  resources :conversations, only: [:index, :show, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
