# require 'pry'

class ListsController < ActionController::API
    def index
       render :json => List.all
    end

    def create 
        list = List.new(list_params)
        if list.save 
            render json: list
        else 
            render json: {error: 'Error creating a list"'}
        end
        # country = List.find_by(name: params[:country]) 
        # list = List.create(name: params[:name], country: country)
        # render :json => list, :include => :country, :status => 201
    end 

    def show
        render :json => List.find_by(id: params["id"])
    end


    def destroy
       list = Item.find(params[:id])
       list.destroy
       render :json => {id: params[:id], message: "List was successfully deleted"}
    end 

    private

    def list_params
        params.require(:list).permit(:name, :country)
    end
end