class DashboardsController < ApplicationController
  def my_dashboard
    @my_bookings = Booking.my_bookings(current_user)
    # byebug
    @received_bookings = Booking.received_bookings(current_user)
    @archived_bookings = Booking.archived_bookings(current_user)
    
    # @my_dogs = Dog.where(user: current_user)
    @my_dogs = current_user.dogs
    @user = current_user
  end
end
