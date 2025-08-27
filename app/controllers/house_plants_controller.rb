class HousePlantsController < ApplicationController
  def index
    @house_plants = HousePlant.all
  end

  def show
    @house_plant = HousePlant.find(params[:id])
  end

  def create
    @house_plant = HousePlant.new(plant_params)
    @room = Room.find(plant_params[:room_id])
    if @house_plant.save
      redirect_to room_path(@room)
    else
      @room = Room.find(plant_params[:room_id])
      render 'rooms/show'
    end
  end

  def plant_params
    params.require(:house_plant).permit(:plant_type, :height, :room_id)
  end
end
