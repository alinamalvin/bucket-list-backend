# require 'pry'

class ListsController < ActionController::API
    def index
       # binding.pry
       render :json => List.all
    end

    def create  
        country = List.find_by(name: params[:country]) 
        list = List.create(name: params[:name], country: country)
        render :json => list, :include => :country, :status => 201
    end 

    def show
        render :json => List.find_by(id: params["id"])
    end


    def destroy
       list = Item.find(params[:id])
       list.destroy
       render :json => {id: params[:id], message: "List was successfully deleted"}
    end 
end