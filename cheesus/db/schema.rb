# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20141114195048) do

  create_table "c_users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "url"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "r_users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "reservations", force: true do |t|
    t.integer  "party_size"
    t.integer  "restaurant_id"
    t.datetime "date"
    t.integer  "c_user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "reservations", ["c_user_id"], name: "index_reservations_on_c_user_id"
  add_index "reservations", ["restaurant_id"], name: "index_reservations_on_restaurant_id"

  create_table "restaurants", force: true do |t|
    t.integer  "price"
    t.string   "cuisine_type"
    t.string   "feature"
    t.string   "location"
    t.string   "picture"
    t.string   "name"
    t.string   "website"
    t.integer  "open"
    t.integer  "close"
    t.integer  "capacity"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "r_user_id"
  end

  create_table "reviews", force: true do |t|
    t.string   "comments"
    t.integer  "rating"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "restaurant_id"
    t.integer  "c_user_id"
  end

end
