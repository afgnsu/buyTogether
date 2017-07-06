Rails.application.routes.draw do
  devise_for :users
  root 'pages#homepage'

  resources :stores do
    resources :items
  end

  resources :purchases do
    resources :orders
  end

  get 'history' => 'orders#history'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
