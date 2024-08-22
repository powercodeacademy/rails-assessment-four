class HousePlantsController < ApplicationController
  def index
    @house_plants = HousePlant.all
  end

  def show
    @house_plant = HousePlant.find(params[:id])
    @room = @house_plant.room
  end

  def new
    @house_plant = HousePlant.new
  end

  def create
    house_plant = HousePlant.create!(house_plant_params)

    redirect_to house_plant
  end

  private

  def house_plant_params
    params.require(:house_plant).permit(:plant_type, :height, :room_id)
  end
end
