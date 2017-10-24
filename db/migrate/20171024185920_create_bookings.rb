class CreateBookings < ActiveRecord::Migration[5.0]
  def change
    create_table :bookings do |t|
      t.date :current_date
      t.date :start_day
      t.date :end_day
      t.integer :days_quantity
      t.integer :adults
      t.integer :kids
      t.string :status
      t.decimal :price_total
      t.belongs_to :guest, foreign_key: true
      t.belongs_to :booking_provider, foreign_key: true
      t.belongs_to :room, foreign_key: true

      t.timestamps
    end
  end
end
