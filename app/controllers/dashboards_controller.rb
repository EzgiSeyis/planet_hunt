class DashboardsController < ApplicationController
  skip_after_action :verify_authorized, only: :index
  skip_after_action :verify_policy_scoped, only: :index

  def index
    @my_bookings = []
    @my_planets = Planet.where(user_id: current_user.id)
  end
end
