class CountriesController < ActionController::API

   def index
      if params[:list_id]
         render :json => List.find(params[:list_id]).countries
      else 
         render :json =>  Country.all
      end 
   end

   def create
      # binding.pry
      @list = List.find(params[:list_id])
      # @country = Country.new(country_params)  - works!
      # @country = Country.find(params[:list_id]) - works but looking for wrong country
      @country = Country.find(params[:country])
      @list.countries<<@country 
      @list.save
      render json: @country
   end 

   private 

   def country_params
      params.require(:country).permit(:name, :id, list_ids: [], list_attributes: [:name])
   end 
   
end 



