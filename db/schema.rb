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

ActiveRecord::Schema.define(version: 20160118083523) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "facebook_users", force: :cascade do |t|
    t.string   "provider"
    t.string   "uid"
    t.string   "name"
    t.string   "oauth_token"
    t.datetime "oauth_expires_at"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "email"
    t.string   "encrypted_password"
    t.string   "confirmation_token"
    t.string   "remember_token"
  end

  create_table "listings", force: :cascade do |t|
    t.string   "listing"
    t.string   "title"
    t.string   "description"
    t.string   "location"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.json     "avatars"
    t.integer  "user_id"
    t.integer  "facebook_user_id"
  end

  create_table "reservations", force: :cascade do |t|
    t.integer  "listing_id"
    t.integer  "user_id"
    t.integer  "facebook_user_id"
    t.datetime "start_date"
    t.datetime "end_date"
    t.integer  "pax"
    t.string   "special_requirements"
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "email"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.string   "address"
    t.integer  "phone"
    t.string   "encrypted_password", limit: 128
    t.string   "confirmation_token", limit: 128
    t.string   "remember_token",     limit: 128
    t.string   "avatars"
  end

  add_index "users", ["email"], name: "index_users_on_email", using: :btree
  add_index "users", ["remember_token"], name: "index_users_on_remember_token", using: :btree

end
