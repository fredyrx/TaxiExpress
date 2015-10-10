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

ActiveRecord::Schema.define(version: 20151010055847) do

  create_table "address_favorites", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.integer  "user_id",    limit: 4
    t.integer  "address_id", limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "address_favorites", ["address_id"], name: "index_address_favorites_on_address_id", using: :btree
  add_index "address_favorites", ["user_id"], name: "index_address_favorites_on_user_id", using: :btree

  create_table "addresses", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.decimal  "latitude",               precision: 10
    t.decimal  "longitude",              precision: 10
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
  end

  create_table "pasajeros", force: :cascade do |t|
    t.string   "nombre_pasajero", limit: 255
    t.string   "correo",          limit: 255
    t.string   "password",        limit: 255
    t.string   "conf_pass",       limit: 255
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "routes", force: :cascade do |t|
    t.decimal  "price",                        precision: 10
    t.datetime "created_at",                                  null: false
    t.datetime "updated_at",                                  null: false
    t.integer  "address_origin_id",  limit: 4
    t.integer  "address_destiny_id", limit: 4
  end

  add_index "routes", ["address_destiny_id"], name: "address_destiny_id", using: :btree
  add_index "routes", ["address_origin_id"], name: "address_origin_id", using: :btree

  create_table "services", force: :cascade do |t|
    t.integer  "num_passenger",    limit: 4
    t.string   "car_type",         limit: 255
    t.integer  "pay_method",       limit: 4
    t.string   "state",            limit: 255
    t.string   "feedback",         limit: 255
    t.integer  "route_id",         limit: 4
    t.integer  "user_customer_id", limit: 4
    t.integer  "user_driver_id",   limit: 4
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  add_index "services", ["route_id"], name: "index_services_on_route_id", using: :btree
  add_index "services", ["user_customer_id"], name: "user_customer_id", using: :btree
  add_index "services", ["user_driver_id"], name: "user_driver_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
    t.string   "name",                   limit: 255
    t.string   "last_name",              limit: 255
    t.integer  "num_passenger",          limit: 4
    t.string   "car_type",               limit: 255
    t.string   "state",                  limit: 255
    t.string   "user_type",              limit: 255
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "address_favorites", "addresses"
  add_foreign_key "address_favorites", "users"
  add_foreign_key "routes", "addresses", column: "address_destiny_id", name: "routes_ibfk_2"
  add_foreign_key "routes", "addresses", column: "address_origin_id", name: "routes_ibfk_1"
  add_foreign_key "services", "routes"
  add_foreign_key "services", "users", column: "user_customer_id", name: "services_ibfk_1"
  add_foreign_key "services", "users", column: "user_driver_id", name: "services_ibfk_2"
end
