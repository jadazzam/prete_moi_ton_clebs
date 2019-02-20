class ReservationsController < ApplicationController
  def index
    @reservations = Reservation.all
  end

  def show
    @reservation = Reservation.find(params[:id])
  end

  def create
    @reservation = Reservation.new(reservation_params)
    @reservation.save
    redirect_to
  end

  def new
    @reservation = Reservation.new
  end

  private

  def reservation_params
    params.require(:reservation).permit(:name, :dog, :description)
  end
end
