class HousePlantsController < ApplicationController
  before_action :set_house_plant, only: [:show, :edit]

  def index
    @house_plants = HousePlant.all
  end

  def show
  end

  def new
    @house_plant = HousePlant.new
  end

  def create
    @house_plant = HousePlant.new(house_plant_params)
    if @house_plant.save
      redirect_to @house_plant
    else
      render :new
    end
  end

  private

  def set_house_plant
    @house_plant = HousePlant.find(params[:id])
  end

  def house_plant_params
    params.require(:house_plant).permit(:plant_type, :height, :room_id)
  end
end
