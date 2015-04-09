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

ActiveRecord::Schema.define(version: 20150407142158) do

  create_table "comments", force: :cascade do |t|
    t.integer  "report_id",  limit: 4
    t.integer  "user_id",    limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "comments", ["report_id"], name: "index_comments_on_report_id", using: :btree
  add_index "comments", ["user_id"], name: "index_comments_on_user_id", using: :btree

  create_table "groups", force: :cascade do |t|
    t.string "name", limit: 255
  end

  create_table "reports", force: :cascade do |t|
    t.integer  "tender_id",  limit: 4
    t.integer  "group_id",   limit: 4
    t.string   "state",      limit: 255
    t.text     "text",       limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "reports", ["group_id"], name: "index_reports_on_group_id", using: :btree
  add_index "reports", ["tender_id"], name: "index_reports_on_tender_id", using: :btree

  create_table "tender_ratings", id: false, force: :cascade do |t|
    t.integer "user_id",   limit: 4
    t.integer "tender_id", limit: 4
    t.integer "rating",    limit: 4
  end

  add_index "tender_ratings", ["tender_id"], name: "index_tender_ratings_on_tender_id", using: :btree
  add_index "tender_ratings", ["user_id"], name: "index_tender_ratings_on_user_id", using: :btree

  create_table "tenders", force: :cascade do |t|
    t.integer  "user_id",          limit: 4
    t.string   "activity_outline", limit: 255
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  add_index "tenders", ["user_id"], name: "index_tenders_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string  "name",          limit: 255
    t.string  "username",      limit: 255
    t.string  "neptun",        limit: 255
    t.string  "email",         limit: 255
    t.integer "year",          limit: 4
    t.string  "training_code", limit: 255
    t.boolean "is_reviewer",   limit: 1
    t.string  "password",      limit: 255
  end

  create_table "users_in_groups", id: false, force: :cascade do |t|
    t.integer "user_id",  limit: 4
    t.integer "group_id", limit: 4
    t.string  "rank",     limit: 255
  end

  add_index "users_in_groups", ["group_id"], name: "index_users_in_groups_on_group_id", using: :btree
  add_index "users_in_groups", ["user_id"], name: "index_users_in_groups_on_user_id", using: :btree

end
