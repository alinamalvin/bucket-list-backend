Rails.application.routes.draw do

  resources :lists do
     resources :countries
   end
  resources :countries 

end

# Rails.application.routes.draw do

#   resources :lists, only: [:index, :create, :show, :destroy] do
#      resources :countries, only: [:index, :create]
#    end
#   resources :countries , only: [:index]

#   root 'countries#index'
# end
