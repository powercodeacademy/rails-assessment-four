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
    @room = @house_plant.room
    @rooms = Room.all

    if @house_plant.save
      redirect_to room_path(@room)
    else
      flash.now[:alert] = "Name and Description must be present"
      render :new
    end
  end

  private

  def house_plant_params
    params.require(:house_plant).permit(:room_id, :plant_type, :height)
  end
end
