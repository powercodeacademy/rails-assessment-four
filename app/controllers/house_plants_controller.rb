class HousePlantsController < ApplicationController
  before_action :set_house_plant, only: %i[show]

  def index
    @house_plants = HousePlant.all
  end

  def show; end

  def new
    @house_plant = HousePlant.new
    @house_plant.build_room
  end

  def create
    @house_plant = HousePlant.new(house_plant_params)

    if @house_plant.save
      redirect_to house_plant_path(@house_plant)
    else
      render :new, status: :unprocessable_entity
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
