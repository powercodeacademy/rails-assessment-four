class HousePlantsController < ApplicationController
  def index
    @house_plants = HousePlant.all
  end

  def show
    @pizza = HousePlant.find(params[:id])
  end
end
