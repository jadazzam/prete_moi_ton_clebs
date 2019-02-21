class DogsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  # ajouter home pour ne pas etre authentifie

  def home
    @dogs = Dog.all
  end

  def index
    @dogs = Dog.where.not(latitude: nil, longitude: nil)
    @dogs = Dog.near(params[:address], 2)
    @markers = @dogs.map do |dog|
      {
        lng: dog.longitude,
        lat: dog.latitude,
        # infoWindow: render_to_string(partial: "infowindow", locals: { dog: dog }),
        image_url: helpers.asset_url('clebs.png')
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

  def destroy
    @dog = Dog.find(params[:id])
    @dog.destroy
    redirect_to root_path
  end

  def dog_params
    params.require(:dog).permit(:name, :age, :gender, :breed, :description, :photo, :address)
  end
end
