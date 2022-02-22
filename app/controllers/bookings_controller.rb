class BookingsController < ApplicationController
  def index

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

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to my_dashboard_path
  end

  private

  def booking_params
    params.require(:booking).permit(:message, :date, :id)
  end
end
