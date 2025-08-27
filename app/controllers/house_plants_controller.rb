class HousePlantsController < ApplicationController
  before_action :set_house_plant, only: [:show]

  def index
    @house_plants = HousePlant.all
  end

  def show
  end

  private

  def set_house_plant
    @house_plant = HousePlant.find(params[:id])
  end

  def house_plant_params
    params.require(:house_plant).permit(:plant_type, :height, :room_id)
  end
end
