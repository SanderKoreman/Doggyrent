class DogsController < ApplicationController

  def index
    @dogs = Dog.all

    @markers = @dogs.geocoded.map do |flat|
      {
        lat: flat.latitude,
        lng: flat.longitude,
        info_window: render_to_string(partial: "info_window", locals: { flat: flat }),
        image_url: helpers.asset_url("dogface5")
      }
    end
  end

  def show
    @dog = Dog.find(params[:id])
    @booking = Booking.new
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

  def edit
    @dog = Dog.find(params[:id])
  end

  def update
    @dog = Dog.find(params[:id])
    @dog.update(dog_params)

    redirect_to dog_path(@dog)
  end


  private

  def dog_params
    params.require(:dog).permit(:name, :breed, :description, :address, photos: [])
  end
end
