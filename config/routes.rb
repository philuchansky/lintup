Rails.application.routes.draw do
  #root 'snippets#index'
  ### USERS
  get '/users/:id/delete' => 'users#confirm_destroy', as: :delete_user
  get '/users/:id/confirm_delete' => 'users#destroy', as: :confirm_delete_user

  get '/snippets' => 'snippets#index_global'

  resources :users, except: :destroy do
    ### SNIPPETS
    resources :snippets
  end




  ### SESSIONS
  get '/logout' => 'sessions#destroy'
  resources :sessions, only: [:new, :create, :destroy]

end