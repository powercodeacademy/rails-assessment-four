class HousePlantsController < ApplicationController
  def index
    @house_plants = HousePlant.all
  end

  def show
    @house_plant = HousePlant.find(params[:id])
  end

  def new
    @house_plant = HousePlant.new(height: 1)
  end

  def create
    @house_plant = HousePlant.create(house_plant_params)

    redirect_to house_plant_path(@house_plant)
  end

  private

  def house_plant_params
    params.require(:house_plant).permit(:height, :plant_type, :room_id)
  end
end
