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

ActiveRecord::Schema.define(version: 20150628181506) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "courses", force: :cascade do |t|
    t.string  "subject"
    t.date    "start_date"
    t.date    "end_date"
    t.string  "location"
    t.decimal "price"
  end

  create_table "interviews", force: :cascade do |t|
    t.integer   "q1"
    t.integer   "q2"
    t.integer   "q3"
    t.integer   "q4"
    t.integer   "q5"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "notes"
    t.integer  "submission_id"
  end

  create_table "phonescreens", force: :cascade do |t|
    t.integer  "q1"
    t.integer  "q2"
    t.integer  "q3"
    t.integer  "q4"
    t.integer  "q5"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "notes"
    t.integer  "submission_id"
  end

  create_table "submissions", force: :cascade do |t|
    t.integer  "student_id"
    t.integer  "course_id"
    t.string   "status",                default: "pending-phone"
    t.integer  "instructor_id"
    t.integer  "officer_id"
    t.integer  "interview_id"
    t.string   "application_file_name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "phonescreen_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "type"
    t.string   "f_name",          null: false
    t.string   "l_name",          null: false
    t.string   "email",           null: false
    t.string   "password_digest", null: false
    t.string   "phone_number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree

end
