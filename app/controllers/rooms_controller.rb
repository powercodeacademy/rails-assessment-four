class RoomsController < ApplicationController
  def index
    @search = params[:search].strip

    @rooms = if @search.present?
               Room.where("name LIKE ?", "%#{@search}%")
             else
               Room.all
             end
  end

  def show
    @room = Room.find(params[:id])
  end
end
