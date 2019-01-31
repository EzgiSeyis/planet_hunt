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
    @booking.status = "Pending"
    @booking.save
    redirect_to planet_path(params[:planet_id])
  end

  def accept
    @booking = Booking.find(params[:id])
    @booking.status = "Accepted"
    authorize @booking
    @booking.save
    redirect_to dashboard_path
  end

  def decline
    @booking = Booking.find(params[:id])
    @booking.status = "Declined"
    authorize @booking
    @booking.save
    redirect_to dashboard_path
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :message, :user_id, :planet_id, :status)
  end
end
