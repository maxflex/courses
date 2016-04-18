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

ActiveRecord::Schema.define(version: 20160418212417) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "options", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "count"
  end

  create_table "plan_options", force: :cascade do |t|
    t.integer  "plan_id"
    t.integer  "option_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "plan_options", ["option_id"], name: "index_plan_options_on_option_id", using: :btree
  add_index "plan_options", ["plan_id"], name: "index_plan_options_on_plan_id", using: :btree

  create_table "plans", force: :cascade do |t|
    t.string   "title"
    t.integer  "price"
    t.string   "img"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "requests", force: :cascade do |t|
    t.integer  "plan_id"
    t.string   "name"
    t.string   "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "requests", ["plan_id"], name: "index_requests_on_plan_id", using: :btree

  add_foreign_key "requests", "plans"
end
