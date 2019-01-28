class PlanetsController < ApplicationController
  before_action :set_planet, only: [:show]

  def show
  end

  def planet_params
    params.require(:planet).permit(:name)
  end

  def set_planet
    @planet = Planet.find(params[:id])
  end
end
