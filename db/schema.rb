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

ActiveRecord::Schema.define(version: 20170519233010) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "companies", force: :cascade do |t|
    t.string   "company_name"
    t.string   "rif"
    t.string   "status"
    t.string   "type_company"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "containers", force: :cascade do |t|
    t.string   "bic"
    t.string   "type_container"
    t.integer  "company_id"
    t.integer  "ship_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["company_id"], name: "index_containers_on_company_id", using: :btree
    t.index ["ship_id"], name: "index_containers_on_ship_id", using: :btree
  end

  create_table "ships", force: :cascade do |t|
    t.integer  "imo"
    t.string   "name"
    t.string   "status"
    t.string   "type_ship"
    t.integer  "company_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_ships_on_company_id", using: :btree
  end

  add_foreign_key "containers", "companies"
  add_foreign_key "containers", "ships"
  add_foreign_key "ships", "companies"
end
