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

ActiveRecord::Schema.define(version: 20150429232736) do

  create_table "categories", force: :cascade do |t|
    t.string   "category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "customers", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "addr1"
    t.string   "addr2"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "h_phone"
    t.string   "c_phone"
    t.string   "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "employees", force: :cascade do |t|
    t.string   "firstname"
    t.string   "middlename"
    t.string   "lastname"
    t.string   "address"
    t.string   "city"
    t.string   "zipcode"
    t.string   "state"
    t.string   "homephone"
    t.string   "mobilephone"
    t.string   "email"
    t.string   "auth"
    t.decimal  "wage"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "estimates", force: :cascade do |t|
    t.decimal  "statetax"
    t.decimal  "muntax"
    t.decimal  "subtotal"
    t.decimal  "total"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "customer_id"
    t.integer  "vehicle_id"
    t.integer  "employee_id"
  end

  add_index "estimates", ["customer_id"], name: "index_estimates_on_customer_id"
  add_index "estimates", ["employee_id"], name: "index_estimates_on_employee_id"
  add_index "estimates", ["vehicle_id"], name: "index_estimates_on_vehicle_id"

  create_table "labors", force: :cascade do |t|
    t.string   "system"
    t.string   "description"
    t.string   "unit"
    t.decimal  "rate_a"
    t.decimal  "rate_b"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "lines_in_estimates", force: :cascade do |t|
    t.decimal  "qty"
    t.string   "description"
    t.decimal  "extended"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "estimate_id"
    t.integer  "product_id"
  end

  add_index "lines_in_estimates", ["estimate_id"], name: "index_lines_in_estimates_on_estimate_id"
  add_index "lines_in_estimates", ["product_id"], name: "index_lines_in_estimates_on_product_id"

  create_table "products", force: :cascade do |t|
    t.string   "product_no"
    t.string   "product_sku"
    t.string   "product_desc"
    t.string   "vendor"
    t.string   "category"
    t.decimal  "cost"
    t.decimal  "price"
    t.integer  "qty"
    t.integer  "category_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "products", ["category_id"], name: "index_products_on_category_id"

  create_table "vehicles", force: :cascade do |t|
    t.string   "vin"
    t.string   "manufacturer"
    t.string   "year"
    t.string   "model"
    t.string   "trim"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "customer_id"
  end

  add_index "vehicles", ["customer_id"], name: "index_vehicles_on_customer_id"

end
