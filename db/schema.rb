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

ActiveRecord::Schema.define(version: 20140512202151) do

  create_table "categories", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "store_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "categories", ["store_id"], name: "index_categories_on_store_id"

  create_table "items", force: true do |t|
    t.string   "menu_id"
    t.string   "name"
    t.text     "description"
    t.boolean  "spicy"
    t.text     "image"
    t.integer  "category_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "items", ["category_id"], name: "index_items_on_category_id"

  create_table "orders", force: true do |t|
    t.string   "order_num"
    t.string   "phone"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "orders", ["user_id"], name: "index_orders_on_user_id"

  create_table "orders_items_tables", force: true do |t|
    t.integer "order_id"
    t.integer "item_id"
  end

  create_table "pictures", force: true do |t|
    t.string   "file_file_name"
    t.string   "file_content_type"
    t.integer  "file_file_size"
    t.datetime "file_updated_at"
    t.integer  "item_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "pictures", ["item_id"], name: "index_pictures_on_item_id"

  create_table "prices", force: true do |t|
    t.decimal  "price"
    t.integer  "item_id"
    t.integer  "unit_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "prices", ["item_id"], name: "index_prices_on_item_id"
  add_index "prices", ["unit_id"], name: "index_prices_on_unit_id"

  create_table "stores", force: true do |t|
    t.string   "name"
    t.string   "phone"
    t.text     "address"
    t.decimal  "latitude"
    t.decimal  "longitude"
    t.text     "open_hours"
    t.text     "description"
    t.text     "image"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "units", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "facebook_name"
    t.string   "password_digest"
    t.string   "facebook_id",          default: "", null: false
    t.string   "facebook_accesstoken"
    t.string   "token"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["facebook_id"], name: "index_users_on_facebook_id", unique: true

end
