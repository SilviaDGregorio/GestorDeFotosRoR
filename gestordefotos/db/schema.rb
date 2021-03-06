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

ActiveRecord::Schema.define(version: 20150909165524) do

  create_table "albums", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "photos", force: :cascade do |t|
    t.integer  "album_id",           limit: 4
    t.datetime "order_date"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.string   "image_file_name",    limit: 255
    t.string   "image_content_type", limit: 255
    t.integer  "image_file_size",    limit: 4
    t.datetime "image_updated_at"
  end

  add_index "photos", ["album_id"], name: "index_photos_on_album_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "name",                  limit: 255
    t.boolean  "blocked",               limit: 1
    t.string   "email",                 limit: 255
    t.string   "password",              limit: 255
    t.string   "salt",                  limit: 255
    t.string   "token",                 limit: 255
    t.datetime "token_valid_until"
    t.integer  "failed_login_attempts", limit: 4
    t.datetime "login_blocked_until"
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
  end

end
