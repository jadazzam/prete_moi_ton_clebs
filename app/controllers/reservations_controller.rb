class ReservationsController < ApplicationController
  def index
    @reservations = Reservation.where("user_id = ?", current_user.id).order(created_at: :desc)
  end

  def index_owner
    @reservations = Reservation.select { |reservation| reservation.dog.user == current_user }
                               .sort_by { |reservation| reservation.updated_at }
                               .reverse
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

  def update
    @reservation = Reservation.find(params[:id])
    @reservation.confirmed = params[:reservation][:confirmed]
    @reservation.save
    redirect_to index_owner_path
  end

  def destroy
    @reservation = Reservation.find(params[:id])
    @reservation.destroy
    redirect_to user_reservations_path
  end
end
