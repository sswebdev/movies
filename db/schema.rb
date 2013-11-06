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

ActiveRecord::Schema.define(version: 20131106152549) do

  create_table "actors", force: true do |t|
    t.string "name"
    t.string "image_url"
    t.string "dob"
    t.text   "bio"
  end

  create_table "directors", force: true do |t|
    t.string "name"
    t.text   "bio"
    t.string "image_url"
    t.string "dob"
  end

  create_table "movies", force: true do |t|
    t.string  "title"
    t.integer "year"
    t.integer "duration",    default: 0
    t.text    "description"
    t.string  "image_url"
    t.integer "director_id"
  end

  create_table "reviews", force: true do |t|
    t.string   "title"
    t.text     "body"
    t.integer  "rating",     default: 1
    t.integer  "movie_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
