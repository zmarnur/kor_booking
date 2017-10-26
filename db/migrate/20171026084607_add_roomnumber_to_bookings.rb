class AddRoomnumberToBookings < ActiveRecord::Migration[5.0]
  def change
    add_column :bookings, :room_number, :integer 
  end
end
