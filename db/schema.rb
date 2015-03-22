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

ActiveRecord::Schema.define(version: 20141227045638) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "postgis"

  create_table "auto_brands", force: true do |t|
    t.string   "name"
    t.string   "auto_brand_photo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "auto_models", force: true do |t|
    t.string   "name"
    t.string   "auto_model_photo"
    t.integer  "auto_brand_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "car_maintenance_infos", force: true do |t|
    t.string   "title"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "customer_service_item_ships", force: true do |t|
    t.integer  "customer_id"
    t.integer  "service_item_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "customer_service_station_ships", force: true do |t|
    t.integer  "customer_id"
    t.integer  "service_station_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "customers", force: true do |t|
    t.integer  "user_id"
    t.float    "amount"
    t.integer  "user_point"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "maintenance_goods", force: true do |t|
    t.string   "name"
    t.string   "photo"
    t.string   "link"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "roles", force: true do |t|
    t.string   "name"
    t.integer  "resource_id"
    t.string   "resource_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "roles", ["name", "resource_type", "resource_id"], :name => "index_roles_on_name_and_resource_type_and_resource_id"
  add_index "roles", ["name"], :name => "index_roles_on_name"

  create_table "service_item_product_auto_model_ships", force: true do |t|
    t.integer  "service_item_product_id"
    t.integer  "auto_model_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "service_item_products", force: true do |t|
    t.string   "name"
    t.integer  "service_item_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "service_items", force: true do |t|
    t.string   "name"
    t.integer  "duration1"
    t.integer  "duration2"
    t.integer  "mile"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "step"
  end

  create_table "service_station_administrator_service_station_ships", force: true do |t|
    t.integer  "service_station_administrator_id"
    t.integer  "service_station_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "service_station_administrators", force: true do |t|
    t.integer  "service_station_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "service_stations", force: true do |t|
    t.string   "name"
    t.string   "address"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.spatial  "location",     limit: {:srid=>4326, :type=>"point", :geographic=>true}
    t.string   "office_phone"
    t.string   "mobile_phone"
  end

  create_table "user_records", force: true do |t|
    t.integer  "user_id"
    t.integer  "auto_model_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.date     "purchasing_date"
    t.integer  "mile"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "phone"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  create_table "users_roles", id: false, force: true do |t|
    t.integer "user_id"
    t.integer "role_id"
  end

  add_index "users_roles", ["user_id", "role_id"], :name => "index_users_roles_on_user_id_and_role_id"

end
