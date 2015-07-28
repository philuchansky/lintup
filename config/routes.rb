Rails.application.routes.draw do
  root 'snippets#index_global'

  ### USERS + SNIPPETS ###
  get '/users/:id/delete' => 'users#confirm_destroy', as: :delete_user
  get '/users/:id/confirm_delete' => 'users#destroy', as: :confirm_delete_user
  get '/snippets' => 'snippets#index_global'
  post '/users/:user_id/snippets/new' => 'snippets#create'
  resources :users, except: :destroy do
    resources :snippets
  end

  ### SESSIONS ###
  get '/logout' => 'sessions#destroy'
  resources :sessions, only: [:new, :create, :destroy]

end