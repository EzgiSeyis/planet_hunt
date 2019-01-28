class PlanetsController < ApplicationController
  def edit
    @planet = Planet.new
  end
end
