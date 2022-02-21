class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def new
    @dog = Dog.find(params[:dog_id])
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @dog = Dog.find(params[:dog_id])
    @booking.user = current_user
    @booking.dog = @dog
    if @booking.save
      flash[:notice] = "Thanks! Booking was created"
    else
      flash[:error] = "Something went wrong!"
    end
    redirect_to dog_bookings_path(@dog)

  end

  def edit
  end

  def update
  end

  private

  def booking_params
    params.require(:booking).permit(:message, :date)
  end
end
