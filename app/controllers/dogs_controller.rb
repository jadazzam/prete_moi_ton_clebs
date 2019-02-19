class DogsController < ApplicationController
  def index
    @dogs = Dog.all
  end

  def new
    @dog = Dog.new
  end

  def create
    @dog = Dog.new(dog_params)
    @dog.save
  end

  def dog_params
    params.require(:dog).permit(:name, :age, :gender, :breed, :description)
  end
end
