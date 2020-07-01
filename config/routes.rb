Rails.application.routes.draw do

  resources :countries, only: [:index]
  resources :lists, only: [:index, :create, :destroy]

end
