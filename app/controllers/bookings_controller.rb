class BookingsController < ApplicationController
  before_action :authenticate_user! # , except: [:index, :show]

  def new
    @booking = Booking.new
    @planet = Planet.find(params[:planet_id])
    authorize @booking
  end

  def create
    @booking = Booking.new(booking_params)
    authorize @booking
    @booking.user = current_user
    @booking.save
    redirect_to planet_path(params[:planet_id])
  end

  private

  def booking_params
   params.require(:booking).permit(:start_date, :end_date, :message, :user_id, :planet_id)

  end
end
