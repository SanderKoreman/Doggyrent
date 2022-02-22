class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :dog

  def self.my_bookings(user)
    where(user: user)
  end

  def self.received_bookings(user)
    where(dog: user.dogs)
  end
end
