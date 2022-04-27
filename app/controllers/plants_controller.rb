class PlantsController < ApplicationController

    def index
        plants = Plant.all
        render json: plants
    end

    def show
        plant = Plant.find_by(id: params[:id])
        render json: plant
    end

    def create
        bird_created =  Plant.create(plant_params)
        render json: bird_created 
        render json: bird_created , status: 201
    end

    def plant_params
        params.permit(:name , :image , :price)
    
    end

end #this is the last end
