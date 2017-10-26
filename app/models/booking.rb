class Booking < ApplicationRecord
  BOOKING_STATUS = ["Brak wpłaty", "Zaliczka", "100%", "Anulowano"]

  belongs_to :guest ##tells RoR that the Booking will have one user attached to it
  #belongs_to :booking_provider
  belongs_to :room ##tells RoR that the Booking will have one room attached to it
  accepts_nested_attributes_for :guest

  ## validations ##

  #validates :bar, :inclusion => {:in => [true, false]} ## makes sure that bar is boolean
  #validates :event_type, :start, :finish, :presence => true ##makes sure that these fields are present
  #validates :room_id, :user_id, :attendees, :numericality => {:only_integer => true, :greater_than => 0} ## makes sure that room_id and user_id are both integers
  #validates :total_price, :numericality => {:greater_than => 0} ## makes sure that total_price is greater than 0

end
