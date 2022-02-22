class DogsController < ApplicationController

  def index
    @dogs = Dog.all
  end

  def show
    @dog = Dog.find(params[:id])
  end

  def new
    @dog = Dog.new
  end

  def create
    @dog = Dog.new(dog_params)
    @dog.user = current_user
    if @dog.save
      redirect_to dog_path(@dog), notice: 'Dog was successfully created.'
    else
      render :new
    end
  end

  def destroy
    @dog = Dog.find(params[:id])
    @dog.destroy if @dog.user == current_user
    redirect_to my_dashboard_path
  end

  private

  def dog_params
    params.require(:dog).permit(:name, :breed, :description, :address, photos: [])
  end
end
