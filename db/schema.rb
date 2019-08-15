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

ActiveRecord::Schema.define(version: 2019_08_14_180917) do

  create_table "daycares", force: :cascade do |t|
    t.string "name"
    t.string "location"
    t.decimal "rating"
    t.integer "review_count"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "yelp_id"
  end

  create_table "my_daycares", force: :cascade do |t|
    t.integer "user_id"
    t.integer "daycare_id"
    t.text "notes"
    t.string "schedule_visit"
    t.boolean "favorite"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "daycare_id"
    t.integer "user_id"
    t.text "notes"
    t.date "schedule_visit"
    t.boolean "favorite", default: true
    t.text "review"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
