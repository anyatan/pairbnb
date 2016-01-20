Rails.application.routes.draw do

  get 'transactions/new'
  get '/transactions' => 'transactions#new'

  resources :listings do 
    resources :reservations
  end

  root 'home#index'

  resources :users,
  controller: 'users',
  only: [:create, :new]

  match 'auth/:provider/callback', to: 'sessions#create', via: [:get, :post]
  match 'auth/failure', to: redirect('/'), via: [:get, :post]
  match 'signout', to: 'sessions#destroy', as: 'signout', via: [:get, :post]

  get '/search' => 'listings#search'
  match 'listing/:reservation/:id', to: 'listings#show', via: [:get, :post]

  resources :users do 
    resources :listings, to: 'listings#abc', as: :abc, only: :index
  end

  resources :transactions, 
  only: [:new, :create]
end
