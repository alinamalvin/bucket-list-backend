class CountriesController < ActionController::API
    def index
       render :json => List.all
    end

    def create  
        country = List.find_by(name: params[:country]) 
        list = List.create(name: params[:name], country: country)
        render :json => list, :include => :country, :status => 201
    end 

    def destroy
       list = Item.find(params[:id])
       list.destroy
       render :json => {id: params[:id], message: "List was successfully deleted"}
    end 
end