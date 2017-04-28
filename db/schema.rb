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

ActiveRecord::Schema.define(version: 20170428045148) do

  create_table "bookings", force: :cascade do |t|
    t.integer  "guest_id"
    t.integer  "listing_id"
    t.date     "check_in_at"
    t.date     "check_out_at"
    t.integer  "guest_count"
    t.string   "stripe_charge_id"
    t.text     "special_requirement"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.index ["guest_id"], name: "index_bookings_on_guest_id"
    t.index ["listing_id"], name: "index_bookings_on_listing_id"
  end

  create_table "listings", force: :cascade do |t|
    t.integer  "host_id"
    t.decimal  "price"
    t.decimal  "long"
    t.decimal  "lat"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.string   "country_code"
    t.integer  "max_guests"
    t.integer  "rooms"
    t.integer  "beds"
    t.boolean  "shared"
    t.integer  "min_nights"
    t.text     "description"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "title"
    t.index ["host_id"], name: "index_listings_on_host_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
