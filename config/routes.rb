Rails.application.routes.draw do


  root 'snippets#index_global'

  ### USERS + SNIPPETS ###
  get '/users/:id/delete' => 'users#confirm_destroy', as: :delete_user
  get '/users/:id/confirm_delete' => 'users#destroy', as: :confirm_delete_user
  get '/snippets' => 'snippets#index_global'
  get '/snippets/:id/delete' => 'snippets#confirm_destroy', as: :delete_snippet
  get '/snippets/:id/confirm_delete' => 'snippets#destroy', as: :confirm_delete_snippet
  resources :users, except: :destroy do
    resources :snippets, only: :index
  end

  # test post snippet
  post '/snippets/new' => 'snippets#create'
  #

  resources :snippets, except: :index
  ### COMMENTS ###
  post '/snippets/:id' => 'comments#create'
  # resources :comments

  ### LIKES ###
  # resources :likes, only: [:new,:create,:destroy], as: :like
  get '/likes' => 'likes#create'
  get '/unlikes' => 'likes#destroy'

  ### SESSIONS ###
  get '/logout' => 'sessions#destroy', as: :logout
  resources :sessions, only: [:new, :create, :destroy]
end