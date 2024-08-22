class HousePlantsController < ApplicationController
  def index
    @house_plants = HousePlant.all
  end

  def show
    @house_plant = HousePlant.find(params[:id])
  end

  def new
    @house_plant = HousePlant.new
    @rooms = Room.all
  end

  def create
    @house_plant = HousePlant.new(house_plant_params)
    @rooms = Room.all
    if @house_plant.save
      redirect_to house_plant_path(@house_plant)
    else
      render :new
    end
  end

  def house_plant_params
    params.require(:house_plant).permit(:plant_type, :height, :room_id)
  end
end
