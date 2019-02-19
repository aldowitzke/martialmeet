Rails.application.routes.draw do
  # get 'offers/index', to: 'offers#index'
  # get 'offers/show', to: 'offers#show'
  # get 'offers/new', to: 'offers#new'
  # post 'offers/create', to: 'offers#create'
  # get 'offers/edit', to: 'offers#edit'
  # patch 'offers/update', to: 'offers#update'
  # delete 'offers/destroy', to: 'offers#destroy'

  resources :offers
  get 'your_classes', to: 'offers#specific'
  delete 'offers/:id/destroy_specific', to: 'offers#destroy_specific', as: 'destroy_specific'

  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

