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

ActiveRecord::Schema.define(version: 20170326101844) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "iphones", force: :cascade do |t|
    t.string   "phone_type"
    t.string   "model"
    t.integer  "size"
    t.string   "color"
    t.text     "description"
    t.decimal  "price"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "macs", force: :cascade do |t|
    t.string   "mac_type"
    t.integer  "size"
    t.string   "color"
    t.text     "description"
    t.decimal  "price"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "orders", force: :cascade do |t|
    t.string   "user_email"
    t.string   "product_type"
    t.decimal  "amount"
    t.string   "promocode"
    t.text     "gift_card"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.string   "product_color"
    t.integer  "product_size"
    t.integer  "iphone_id"
    t.integer  "mac_id"
    t.integer  "watch_id"
    t.integer  "user_id"
    t.text     "address"
  end

  create_table "promocodes", force: :cascade do |t|
    t.integer  "promotype"
    t.string   "promovalue"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
    t.string   "gift_card_code"
    t.string   "activation_digest"
    t.boolean  "activated",         default: false
    t.datetime "activated_at"
    t.string   "reset_digest"
    t.datetime "reset_sent_at"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
  end

  create_table "watches", force: :cascade do |t|
    t.text     "description"
    t.decimal  "price"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "watch_type"
    t.string   "color"
  end

end
