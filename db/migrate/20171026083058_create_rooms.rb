class CreateRooms < ActiveRecord::Migration[5.0]
  def change
    create_table :rooms do |t|
      t.string :room_name
      t.string :room_des
      t.integer :room_capacity

      t.timestamps
    end
  end
end
