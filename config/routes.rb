Rails.application.routes.draw do
  ### USERS

  get '/users/:id/delete' => 'users#confirm_destroy', as: :delete_user
  get '/users/:id/confirm_delete' => 'users#destroy', as: :confirm_delete_user

  resources :users, except: :destroy

  ### SNIPPETS
  resources :snippets

  ### SESSIONS
  get '/logout' => 'sessions#destroy'
  resources :sessions, only: [:new, :create, :destroy]

end