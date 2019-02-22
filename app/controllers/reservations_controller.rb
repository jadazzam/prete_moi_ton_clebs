class ReservationsController < ApplicationController
  def index
    @reservations = Reservation.all.order(created_at: :desc)
  end

  def show
    @reservation = Reservation.find(params[:id])
  end

  def create
    @reservation = Reservation.new
    @reservation.dog_id = params[:dog_id]
    @reservation.user_id = current_user.id
    @reservation.save
    redirect_to reservations_path
  end

  def destroy
    @reservation = Reservation.find(params[:id])
    @reservation.destroy
    redirect_to reservations_path
  end
end
