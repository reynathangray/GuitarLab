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

ActiveRecord::Schema.define(version: 20170322015352) do

  create_table "products", force: :cascade do |t|
    t.string   "name"
    t.decimal  "price"
    t.text     "description"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
    t.string   "photo2_file_name"
    t.string   "photo2_content_type"
    t.integer  "photo2_file_size"
    t.datetime "photo2_updated_at"
  end

  create_table "tuners", force: :cascade do |t|
    t.string   "tunerName"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.string   "mp3_one_file_name"
    t.string   "mp3_one_content_type"
    t.integer  "mp3_one_file_size"
    t.datetime "mp3_one_updated_at"
    t.string   "mp3_two_file_name"
    t.string   "mp3_two_content_type"
    t.integer  "mp3_two_file_size"
    t.datetime "mp3_two_updated_at"
    t.string   "mp3_three_file_name"
    t.string   "mp3_three_content_type"
    t.integer  "mp3_three_file_size"
    t.datetime "mp3_three_updated_at"
    t.string   "mp3_four_file_name"
    t.string   "mp3_four_content_type"
    t.integer  "mp3_four_file_size"
    t.datetime "mp3_four_updated_at"
    t.string   "mp3_five_file_name"
    t.string   "mp3_five_content_type"
    t.integer  "mp3_five_file_size"
    t.datetime "mp3_five_updated_at"
    t.string   "mp3_six_file_name"
    t.string   "mp3_six_content_type"
    t.integer  "mp3_six_file_size"
    t.datetime "mp3_six_updated_at"
  end

end
