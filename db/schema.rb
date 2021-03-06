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

ActiveRecord::Schema.define(version: 20170926140517) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "hikes", force: :cascade do |t|
    t.string "name", null: false
    t.string "country", null: false
    t.string "state"
    t.string "city"
    t.string "difficulty"
    t.integer "elevation"
    t.float "distance"
    t.text "description"
  end

  create_table "journal_entries", force: :cascade do |t|
    t.datetime "date", null: false
    t.text "entry", default: "", null: false
    t.bigint "user_hike_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_hike_id"], name: "index_journal_entries_on_user_hike_id"
  end

  create_table "user_hikes", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "hike_id"
    t.string "list", null: false
    t.text "trip_details"
    t.string "photo"
    t.index ["hike_id"], name: "index_user_hikes_on_hike_id"
    t.index ["user_id"], name: "index_user_hikes_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username", default: "", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
