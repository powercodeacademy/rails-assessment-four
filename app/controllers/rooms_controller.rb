class RoomsController < ApplicationController
  def index
    @rooms = Room.all
  end
  
  def show
    @room = Room.find(params[:id])
    @house_plants = @room.house_plants
    @rooms = Room.all
  end
end
