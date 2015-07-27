Rails.application.routes.draw do
  get 'snippets/index'

  get 'snippets/show'

  get 'snippets/new'

  get 'snippets/create'

  get 'snippets/edit'

  get 'snippets/update'

  get 'snippets/destroy'

  resources :users
end