Rails.application.routes.draw do
  resources :users
  resources :snippets

  get '/logout' => 'sessions#destroy'

  resources :sessions, only: [:new, :create, :destroy]
end