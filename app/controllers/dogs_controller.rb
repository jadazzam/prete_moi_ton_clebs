class DogsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def home
    @dogs = Dog.all
  end

  def mine
    @dogs = Dog.where("user_id = ?", current_user.id)
  end

  def index
    @dogs = Dog.where.not(latitude: nil, longitude: nil)
    @dogs = Dog.near(params[:address], 10)
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
    @dog.user = current_user
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
