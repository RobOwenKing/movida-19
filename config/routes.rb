Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :posts do
    resources :conversations, only: [ :new, :create ]
  end

  resources :conversations, only: [ :index, :show ] do
    resources :messages, only: [ :create ]
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
