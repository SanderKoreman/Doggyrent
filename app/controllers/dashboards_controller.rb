class DashboardsController < ApplicationController
  def my_dashboard
    @my_bookings = Booking.my_bookings(current_user)
    # byebug
    @received_bookings = Booking.received_bookings(current_user)
  end
end
