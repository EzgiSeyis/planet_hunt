class PlanetsController < ApplicationController
  before_action :authenticate_user!, except: %i[index show]
  before_action :set_planet, only: %i[edit update]

  def new
    @planet = Planet.new
  end

  def create
    @planet = Planet.new(planet_params)
    if @planet.save!
      redirect_to planet_path(@planet)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @planet.update(planet_params)
      redirect_to planet_path(@planet)
    else render :edit
    end
  end

  private

  def planet_params
    params.require(:planet).permit(:name, :description, :solar_system, :category, :size, :price, :photo, :user_id)
  end

  def set_planet
    @planet = Planet.find(params[:id])
  end

end
