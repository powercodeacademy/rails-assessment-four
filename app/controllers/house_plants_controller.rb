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

    if @house_plant.save
      redirect_to room_path(@room)
    else
      flash.now.alert = @house_plant.errors.full_messages.to_sentence
      render :new
    end
  end

  private

  def house_plant_params
    params.require(:house_plant).permit(:room_id, :plant_type, :height)
  end
end
