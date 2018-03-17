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

ActiveRecord::Schema.define(version: 20180317205051) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "items", force: :cascade do |t|
    t.string "name"
    t.string "info"
    t.string "recipe"
    t.boolean "excess"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.boolean "recurring"
    t.integer "quantity"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "itemsarray", array: true
    t.boolean "tomato", default: false
    t.boolean "cucumber", default: false
    t.boolean "carrot", default: false
    t.boolean "cabbage", default: false
    t.boolean "broccoli", default: false
    t.boolean "spinach", default: false
    t.boolean "kale", default: false
    t.boolean "celery", default: false
    t.boolean "greenpepper", default: false
    t.boolean "okra", default: false
    t.boolean "corn", default: false
    t.boolean "squash", default: false
    t.boolean "onion", default: false
    t.index ["user_id"], name: "index_orders_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "full_name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "itemsarray", array: true
  end

  add_foreign_key "orders", "users"
end
