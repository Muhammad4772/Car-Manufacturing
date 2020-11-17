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

ActiveRecord::Schema.define(version: 2020_11_17_085744) do

  create_table "car_parts", force: :cascade do |t|
    t.integer "car_id", null: false
    t.integer "part_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["car_id"], name: "index_car_parts_on_car_id"
    t.index ["part_id"], name: "index_car_parts_on_part_id"
  end

  create_table "cars", force: :cascade do |t|
    t.string "name"
    t.string "color"
    t.integer "company_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["company_id"], name: "index_cars_on_company_id"
  end

  create_table "carworkers", force: :cascade do |t|
    t.integer "car_id", null: false
    t.integer "worker_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["car_id"], name: "index_carworkers_on_car_id"
    t.index ["worker_id"], name: "index_carworkers_on_worker_id"
  end

  create_table "companies", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "designars", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "cnic"
    t.integer "car_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["car_id"], name: "index_designars_on_car_id"
  end

  create_table "installments", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "car_id", null: false
    t.integer "payment_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["car_id"], name: "index_installments_on_car_id"
    t.index ["payment_id"], name: "index_installments_on_payment_id"
    t.index ["user_id"], name: "index_installments_on_user_id"
  end

  create_table "modaldesigars", force: :cascade do |t|
    t.integer "modal_id", null: false
    t.integer "designar_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["designar_id"], name: "index_modaldesigars_on_designar_id"
    t.index ["modal_id"], name: "index_modaldesigars_on_modal_id"
  end

  create_table "modals", force: :cascade do |t|
    t.string "name"
    t.string "year"
    t.string "maxspeed"
    t.integer "car_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["car_id"], name: "index_modals_on_car_id"
  end

  create_table "parts", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "payments", force: :cascade do |t|
    t.string "amount"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "cnic"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "uservandors", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "vandor_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_uservandors_on_user_id"
    t.index ["vandor_id"], name: "index_uservandors_on_vandor_id"
  end

  create_table "vandors", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "address"
    t.integer "company_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["company_id"], name: "index_vandors_on_company_id"
  end

  create_table "workers", force: :cascade do |t|
    t.string "name"
    t.string "designation"
    t.string "address"
    t.integer "company_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["company_id"], name: "index_workers_on_company_id"
  end

  add_foreign_key "car_parts", "cars"
  add_foreign_key "car_parts", "parts"
  add_foreign_key "cars", "companies"
  add_foreign_key "carworkers", "cars"
  add_foreign_key "carworkers", "workers"
  add_foreign_key "designars", "cars"
  add_foreign_key "installments", "cars"
  add_foreign_key "installments", "payments"
  add_foreign_key "installments", "users"
  add_foreign_key "modaldesigars", "designars"
  add_foreign_key "modaldesigars", "modals"
  add_foreign_key "modals", "cars"
  add_foreign_key "uservandors", "users"
  add_foreign_key "uservandors", "vandors"
  add_foreign_key "vandors", "companies"
  add_foreign_key "workers", "companies"
end
