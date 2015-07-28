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

ActiveRecord::Schema.define(version: 20150728211007) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "hives", force: :cascade do |t|
    t.string   "nickname"
    t.date     "creation_date"
    t.string   "creation_method"
    t.string   "breed"
    t.string   "hive_type"
    t.integer  "supers"
    t.text     "notes"
    t.integer  "location"
    t.integer  "user_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "inspection_id"
  end

  add_index "hives", ["inspection_id"], name: "index_hives_on_inspection_id", using: :btree
  add_index "hives", ["user_id"], name: "index_hives_on_user_id", using: :btree

  create_table "inspection_pests", force: :cascade do |t|
    t.integer  "inspection_id"
    t.integer  "pest_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "inspection_pests", ["inspection_id"], name: "index_inspection_pests_on_inspection_id", using: :btree
  add_index "inspection_pests", ["pest_id"], name: "index_inspection_pests_on_pest_id", using: :btree

  create_table "inspections", force: :cascade do |t|
    t.string   "temperment"
    t.string   "laying_pattern"
    t.string   "uncapped_brood"
    t.string   "capped_brood"
    t.string   "population"
    t.string   "drone_population"
    t.string   "drone_cells"
    t.string   "honey"
    t.string   "nectar"
    t.string   "pollen"
    t.string   "syrup"
    t.string   "pollen_sub"
    t.string   "medicine"
    t.integer  "add_super"
    t.integer  "remove_super"
    t.boolean  "re_queen"
    t.boolean  "queen"
    t.boolean  "eggs"
    t.boolean  "queen_cells"
    t.string   "notes"
    t.integer  "hive_id"
    t.date     "inspection_date"
    t.string   "weather_main"
    t.integer  "weather_temp"
    t.integer  "weather_wind_speed"
    t.integer  "weather_wind_direction"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "inspections", ["hive_id"], name: "index_inspections_on_hive_id", using: :btree

  create_table "pests", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_foreign_key "hives", "inspections"
  add_foreign_key "hives", "users"
  add_foreign_key "inspection_pests", "inspections"
  add_foreign_key "inspection_pests", "pests"
  add_foreign_key "inspections", "hives"
end
