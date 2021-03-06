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

ActiveRecord::Schema.define(version: 20170203154009) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "accompagnements", force: :cascade do |t|
    t.string   "nom"
    t.text     "description"
    t.integer  "temps"
    t.integer  "prix"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "massages", force: :cascade do |t|
    t.string   "nom"
    t.text     "description"
    t.integer  "temps"
    t.integer  "prix"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.datetime "start_time"
    t.datetime "end_time"
  end

  create_table "personnels", force: :cascade do |t|
    t.string   "nom"
    t.string   "prenom"
    t.text     "description"
    t.string   "adresse"
    t.string   "horaire"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "phone"
  end

  create_table "prestations", force: :cascade do |t|
    t.datetime "date"
    t.integer  "user_id"
    t.integer  "massage_id"
    t.integer  "accompagnement_id"
    t.integer  "personnel_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.datetime "start_time"
    t.datetime "end_time"
  end

  add_index "prestations", ["accompagnement_id"], name: "index_prestations_on_accompagnement_id", using: :btree
  add_index "prestations", ["massage_id"], name: "index_prestations_on_massage_id", using: :btree
  add_index "prestations", ["personnel_id"], name: "index_prestations_on_personnel_id", using: :btree
  add_index "prestations", ["user_id"], name: "index_prestations_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.string   "address"
    t.string   "nom"
    t.string   "prenom"
    t.string   "phone"
    t.boolean  "admin",                  default: false, null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "prestations", "accompagnements"
  add_foreign_key "prestations", "massages"
  add_foreign_key "prestations", "personnels"
  add_foreign_key "prestations", "users"
end
