class CountriesController < ActionController::API

   def index
      if params[:list_id]
         render :json => List.find(params[:list_id]).countries
      else 
         render :json =>  Country.all 
      end 
   end
   
end 



