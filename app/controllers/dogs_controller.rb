class DogsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def home
    @dogs = Dog.all
  end

  def index
    # @dogs = Dog.all
    @dogs = Dog.where.not(latitude: nil, longitude: nil)

    @markers = @dogs.map do |dog|
      {
        lng: dog.longitude,
        lat: dog.latitude
      }
    end
  end

  def new
    @dog = Dog.new
  end

  def create
    @dog = Dog.new(dog_params)
    if @dog.save
      redirect_to dog_path(@dog)
    else
      render 'new'
    end
  end

  def show
    @dog = Dog.find(params[:id])
    @reservation = Reservation.new
  end

  def dog_params
    params.require(:dog).permit(:name, :age, :gender, :breed, :description, :photo, :address)
  end
end
