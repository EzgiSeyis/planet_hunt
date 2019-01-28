class PlanetsController < ApplicationController

  def new
    @planet = Planet.new
  end

  def create
    @planet = Planet.create(planet_params)
    redirect_to planets_path
  end


  private

  def planet_params
    params.require(:planet).permit(:name, :description, :solar_system, :category, :size, :price, :photo)
  end
end
