class PlanetsController < ApplicationController
  before_action :set_planet, only: [:show, :edit, :update]
  before_action :authenticate_user!, except: [:index, :show]

  def index
    @planets = policy_scope(Planet).order(created_at: :desc)
  end

  def show
    authorize @planet
  end

  def new
    @planet = Planet.new
    authorize @planet
  end

  def create
    @planet = Planet.new(planet_params)
    authorize @planet
    if @planet.save!
      redirect_to planet_path(@planet)
    else
      render :new
    end
  end

  def edit
    authorize @planet
  end

  def update
    authorize @planet
    if @planet.update(planet_params)
      redirect_to planet_path(@planet)
    else render :edit
    end
  end

  private

  def set_planet
    @planet = Planet.find(params[:id])
  end

  def planet_params
    params.require(:planet).permit(:name, :description, :solar_system, :category, :size, :price, :photo, :user_id)
  end
end
