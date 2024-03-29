# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2024_02_09_155136) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "accomodations", force: :cascade do |t|
    t.integer "available_beds"
    t.integer "price"
    t.text "description"
    t.boolean "has_wifi"
    t.text "welcome_message"
    t.bigint "city_id"
    t.bigint "user_id"
    t.index ["city_id"], name: "index_accomodations_on_city_id"
    t.index ["user_id"], name: "index_accomodations_on_user_id"
  end

  create_table "cities", force: :cascade do |t|
    t.string "name"
    t.string "zip_code"
  end

  create_table "reservations", force: :cascade do |t|
    t.datetime "start_date"
    t.datetime "end_date"
    t.bigint "user_id"
    t.bigint "accomodation_id"
    t.index ["accomodation_id"], name: "index_reservations_on_accomodation_id"
    t.index ["user_id"], name: "index_reservations_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "phone"
    t.text "description"
  end

end
