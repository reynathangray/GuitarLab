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

ActiveRecord::Schema.define(version: 20170413175116) do

  create_table "ProfileInfos_Users", id: false, force: :cascade do |t|
    t.integer "profile_info_id", null: false
    t.integer "user_id",         null: false
    t.index ["profile_info_id", "user_id"], name: "index_ProfileInfos_Users_on_profile_info_id_and_user_id"
    t.index ["user_id", "profile_info_id"], name: "index_ProfileInfos_Users_on_user_id_and_profile_info_id"
  end

  create_table "chords", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.string   "chord_img_file_name"
    t.string   "chord_img_content_type"
    t.integer  "chord_img_file_size"
    t.datetime "chord_img_updated_at"
    t.string   "chord_variation_file_name"
    t.string   "chord_variation_content_type"
    t.integer  "chord_variation_file_size"
    t.datetime "chord_variation_updated_at"
    t.string   "mp3_file_name"
    t.string   "mp3_content_type"
    t.integer  "mp3_file_size"
    t.datetime "mp3_updated_at"
  end

  create_table "microposts", force: :cascade do |t|
    t.text     "content"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_microposts_on_user_id"
  end

  create_table "profile_infos", force: :cascade do |t|
    t.string   "firstName"
    t.string   "lasName"
    t.string   "faveMusic"
    t.string   "bio"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
    t.string   "password_digest"
    t.boolean  "admin",                 default: false
    t.string   "profpic_file_name"
    t.string   "profpic_content_type"
    t.integer  "profpic_file_size"
    t.datetime "profpic_updated_at"
    t.string   "coverpic_file_name"
    t.string   "coverpic_content_type"
    t.integer  "coverpic_file_size"
    t.datetime "coverpic_updated_at"
    t.boolean  "special",               default: false
    t.boolean  "speciall",              default: false
    t.string   "faveMusic"
    t.string   "bio"
    t.boolean  "student"
    t.string   "code"
  end

end
