# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_11_12_213033) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "lesson_details", force: :cascade do |t|
    t.float "cost_per_lesson"
    t.float "lesson_duration"
    t.string "stage"
    t.float "babysitter_wage_per_hour"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "lesson_payments", force: :cascade do |t|
    t.string "type"
    t.float "amount"
    t.date "date"
    t.date "hours"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "lessons", force: :cascade do |t|
    t.string "subject"
    t.datetime "start_date"
    t.datetime "end_date"
    t.string "location"
    t.text "description"
    t.string "calendar_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "people", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "phone"
    t.string "email"
    t.integer "age"
    t.string "parent_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
