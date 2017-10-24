# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20171024190206) do

  create_table "bookings", force: :cascade do |t|
    t.date     "current_date"
    t.date     "start_day"
    t.date     "end_day"
    t.integer  "days_quantity"
    t.integer  "adults"
    t.integer  "kids"
    t.string   "status"
    t.decimal  "price_total"
    t.integer  "guest_id"
    t.integer  "booking_provider_id"
    t.integer  "room_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.index ["booking_provider_id"], name: "index_bookings_on_booking_provider_id"
    t.index ["guest_id"], name: "index_bookings_on_guest_id"
    t.index ["room_id"], name: "index_bookings_on_room_id"
  end

  create_table "guests", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
