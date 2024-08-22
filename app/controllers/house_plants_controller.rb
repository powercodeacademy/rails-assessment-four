class HousePlantsController < ApplicationController
  def index
    @house_plants = HousePlant.all
  end

  def show
    @house_plant = HousePlant.find(params[:id])
    @room = @house_plant.room.id
  end

  def new
    @house_plant = HousePlant.new
    @rooms = Room.all
  end

  def create
    @house_plant = HousePlant.new(house_plant_params)
    @rooms = Room.all

    if @house_plant.save
      redirect_to @house_plant
    else
      flash.now[:alert] = "Height must be present"
      render :new
    end
  end

  private

  def house_plant_params
    params.require(:house_plant).permit(:room_id, :plant_type, :height)
  end
end
