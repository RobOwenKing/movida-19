Rails.application.routes.draw do
  get 'messages/new'
  get 'messages/create'
  get 'conversations/index'
  get 'conversations/show'
  get 'conversations/create'
  devise_for :users
  root to: 'pages#home'

  resources :posts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
