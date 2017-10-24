class Booking < ApplicationRecord
  belongs_to :guest
  #belongs_to :booking_provider
  #belongs_to :room
  accepts_nested_attributes_for :guest

end
