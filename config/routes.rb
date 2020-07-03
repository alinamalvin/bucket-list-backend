Rails.application.routes.draw do

  resources :lists, only: [:index, :create, :show, :destroy] do
     resources :countries, only: [:index, :update]
   end
  resources :countries, only: [:index]

  root 'countries#index'
end
