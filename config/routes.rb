Rails.application.routes.draw do
  resources :users
  resources :snippets
  resources :sessions, only: [:new, :create, :destroy]
end