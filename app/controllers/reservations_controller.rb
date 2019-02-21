class ReservationsController < ApplicationController
  def index
    # current_user = User.find(params[:id])
    @reservations = Reservation.all
  end

  def show
    @reservation = Reservation.find(params[:id])
  end

  def create
    @reservation = Reservation.new
    @reservation.dog_id = params[:dog_id]
    @reservation.user_id = current_user.id
    @reservation.save
    redirect_to user_reservations_path(current_user)
  end

  def destroy
    @reservation = Reservation.find(params[:id])
    @reservation.destroy
    redirect_to user_reservations_path
  end
end
