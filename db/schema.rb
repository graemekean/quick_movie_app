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

ActiveRecord::Schema.define(version: 20151104215002) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "movies", force: :cascade do |t|
    t.string   "title"
    t.string   "director"
    t.string   "writer"
    t.string   "studio"
    t.string   "genre"
    t.string   "year"
    t.string   "runtime"
    t.decimal  "rating"
    t.string   "tagline"
    t.string   "certificate"
    t.string   "imdb_link"
    t.string   "link_to_buy"
    t.string   "link_to_trailer"
    t.string   "poster_url"
    t.string   "fanart1_url"
    t.string   "fanart2_url"
    t.string   "background_url"
    t.decimal  "imdb_rating"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.integer  "user_id"
    t.time     "posted_time"
    t.string   "title"
    t.string   "content"
    t.integer  "movie_id"
    t.string   "venue"
    t.integer  "up_votes"
    t.integer  "down_votes"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

end
