class CountriesController < ActionController::API
     def index
        render :json => Country.all
     end
end