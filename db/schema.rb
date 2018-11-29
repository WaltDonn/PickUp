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

ActiveRecord::Schema.define(version: 20181122015522) do

  create_table "friendship_invitations", force: :cascade do |t|
    t.integer "inviteeID"
    t.integer "inviterID"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "friendships", force: :cascade do |t|
    t.integer "friend1ID"
    t.integer "friend2ID"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "game_invitations", force: :cascade do |t|
    t.integer "inviter_id"
    t.integer "invitee_id"
    t.integer "game_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "games", force: :cascade do |t|
    t.string "time"
    t.integer "max_size"
    t.integer "curr_size"
    t.string "description"
    t.integer "location_id"
    t.integer "sport_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "locations", force: :cascade do |t|
    t.string "name"
    t.string "coordinates"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sports", force: :cascade do |t|
    t.string "title"
    t.string "icon"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_game_pairs", force: :cascade do |t|
    t.boolean "maybe_going"
    t.boolean "is_creator"
    t.integer "user_id"
    t.integer "game_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_sport_pairs", force: :cascade do |t|
    t.integer "user_id"
    t.integer "sport_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "first_name"
    t.string "last_name"
    t.string "password"
    t.string "password_confirmation"
    t.string "bio"
    t.integer "age"
    t.boolean "time_dist"
    t.integer "game_in_range"
    t.string "curr_location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
