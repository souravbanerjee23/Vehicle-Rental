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

ActiveRecord::Schema.define(version: 2021_11_21_164009) do

  create_table "owners", force: :cascade do |t|
    t.string "phone"
    t.string "address"
    t.string "email"
    t.string "password"
    t.integer "passenger_id", null: false
    t.integer "vehicle_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["passenger_id"], name: "index_owners_on_passenger_id"
    t.index ["vehicle_id"], name: "index_owners_on_vehicle_id"
  end

  create_table "passengers", force: :cascade do |t|
    t.string "phone"
    t.string "address"
    t.string "email"
    t.string "password"
    t.string "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "vehicles", force: :cascade do |t|
    t.string "vehicle_no"
    t.string "type"
    t.integer "capacity"
    t.string "start_time"
    t.string "end_time"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "owners", "passengers"
  add_foreign_key "owners", "vehicles"
end
