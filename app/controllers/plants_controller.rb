class PlantsController < ApplicationController
    def index 
        plants = Plant.all
        render json: plants 
    end 

    def show 
        plant = Plant.find_by_id(params[:id])
        render json: plant
    end 

    def create
        plant = Plant.create(plant_param)
        render json: plant, status: 201
    end 

    private 

    def plant_param
        params.permit(:name, :image, :price)
    end

end
