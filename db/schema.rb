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

ActiveRecord::Schema.define(version: 2020_05_10_222717) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "areas", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "repair_histories", force: :cascade do |t|
    t.string "date"
    t.string "pccode"
    t.text "observation"
    t.bigint "area_id"
    t.bigint "repair_type_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["area_id"], name: "index_repair_histories_on_area_id"
    t.index ["repair_type_id"], name: "index_repair_histories_on_repair_type_id"
  end

  create_table "repair_types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "service_areas", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "service_modes", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "service_types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "services", force: :cascade do |t|
    t.string "date"
    t.bigint "tecnic_id"
    t.bigint "area_id"
    t.bigint "service_area_id"
    t.bigint "service_mode_id"
    t.bigint "service_type_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["area_id"], name: "index_services_on_area_id"
    t.index ["service_area_id"], name: "index_services_on_service_area_id"
    t.index ["service_mode_id"], name: "index_services_on_service_mode_id"
    t.index ["service_type_id"], name: "index_services_on_service_type_id"
    t.index ["tecnic_id"], name: "index_services_on_tecnic_id"
  end

  create_table "tecnics", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "repair_histories", "areas"
  add_foreign_key "repair_histories", "repair_types"
  add_foreign_key "services", "areas"
  add_foreign_key "services", "service_areas"
  add_foreign_key "services", "service_modes"
  add_foreign_key "services", "service_types"
  add_foreign_key "services", "tecnics"
end
