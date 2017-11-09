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

ActiveRecord::Schema.define(version: 20171109102140) do

  create_table "answers", force: :cascade do |t|
    t.integer "question_id"
    t.string "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "facilities", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "facility_items", force: :cascade do |t|
    t.string "name"
    t.integer "facility_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "template_id"
  end

  create_table "items", force: :cascade do |t|
    t.integer "template_id"
    t.integer "facility_item_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "protocols", force: :cascade do |t|
    t.integer "facility_item_id"
    t.integer "template_id"
    t.integer "result_id"
    t.boolean "completed"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "questions", force: :cascade do |t|
    t.string "question"
    t.text "description"
    t.integer "template_id"
    t.boolean "required"
    t.boolean "images"
    t.boolean "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "results", force: :cascade do |t|
    t.integer "protocol_id"
    t.string "answer"
    t.string "question"
    t.string "image_url"
    t.string "user"
    t.text "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "schedulings", force: :cascade do |t|
    t.string "name"
    t.integer "template_id"
    t.date "start_date"
    t.date "end_date"
    t.boolean "monday"
    t.boolean "thuesday"
    t.boolean "wendsday"
    t.boolean "thursday"
    t.boolean "friday"
    t.boolean "saturday"
    t.boolean "sunday"
    t.integer "week_duration"
    t.integer "delay"
    t.text "notification"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "template_facility_items", force: :cascade do |t|
    t.integer "template_id"
    t.integer "facility_item_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "templates", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
