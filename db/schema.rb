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

ActiveRecord::Schema.define(version: 20140802175933) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "hstore"

  create_table "pdf_templates", force: true do |t|
    t.string   "name",                        null: false
    t.string   "version"
    t.integer  "year"
    t.string   "new_partial",                 null: false
    t.string   "show_partial",                null: false
    t.boolean  "active",       default: true, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "players", force: true do |t|
    t.integer  "user_id"
    t.string   "aka"
    t.string   "gender"
    t.string   "grad_year"
    t.string   "rank"
    t.string   "scholarship"
    t.string   "usua_num"
    t.integer  "jersey_num"
    t.string   "jersey_size"
    t.string   "shorts_size"
    t.string   "drivers_license"
    t.string   "drive_status"
    t.text     "skills"
    t.text     "medical_info"
    t.text     "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "signed_documents", force: true do |t|
    t.integer  "user_id",                        null: false
    t.integer  "pdf_template_id",                null: false
    t.boolean  "active",          default: true
    t.string   "attachment"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.hstore   "properties",                     null: false
  end

  add_index "signed_documents", ["user_id", "pdf_template_id"], name: "index_signed_documents_on_user_id_and_pdf_template_id", unique: true, using: :btree

  create_table "users", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "phone1"
    t.string   "phone1_type"
    t.string   "phone2"
    t.string   "phone2_type"
    t.string   "user_type"
    t.string   "user_name"
    t.string   "password_digest"
    t.string   "status"
    t.boolean  "admin",           default: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
