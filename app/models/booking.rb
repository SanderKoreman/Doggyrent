class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :dog

  enum status: { pending: 0, approved: 1, declined: 2 }

  def self.my_bookings(user)
    where(user: user)
  end

  def self.received_bookings(user)
    where(dog: user.dogs)
  end
end
