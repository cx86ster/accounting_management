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

ActiveRecord::Schema.define(version: 20171126040500) do

  create_table "accounting_groups", force: :cascade do |t|
    t.string   "accounting_group_code", limit: 255
    t.string   "accounting_group_name", limit: 255
    t.string   "accounting_class",      limit: 255
    t.datetime "deleted_at"
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
  end

  add_index "accounting_groups", ["accounting_group_code"], name: "index_accounting_groups_on_accounting_group_code", unique: true, using: :btree

  create_table "accountings", force: :cascade do |t|
    t.date     "accounting_date"
    t.integer  "accounting_money",    limit: 4
    t.string   "item_name",           limit: 255
    t.integer  "accounting_group_id", limit: 4
    t.string   "purchase_place",      limit: 255
    t.string   "accounting_source",   limit: 255
    t.string   "accounting_class",    limit: 255
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
  end

end
