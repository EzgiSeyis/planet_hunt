class PlanetsController < ApplicationController

 before_action :authenticate_user!, except: [ :index, :show]

 def index
  @planets = Planet.all
end

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


private

def planet_params
  params.require(:planet).permit(:name, :description, :solar_system, :category, :size, :price, :photo, :user_id)

end
end
