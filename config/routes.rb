Rails.application.routes.draw do
  root 'pages#homepage'

  get '/stores' => 'stores#index'

  # create new store
  get  '/stores/new' => 'stores#new', as: 'new_store'
  post '/stores'     => 'stores#create'

  # show a store
  get '/stores/:id' => 'stores#show', as: 'store'

  # update a store
  get   '/stores/:id/edit' => 'stores#edit', as: 'edit_store'
  patch '/stores/:id'      => 'stores#update'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
