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

ActiveRecord::Schema.define(version: 2019_03_07_183731) do

  create_table "presentationdetails", force: :cascade do |t|
    t.string "tname", limit: 60, null: false
    t.text "tdescription", null: false
    t.string "fostudy", limit: 60, null: false
    t.datetime "dtpresent"
    t.string "prname", limit: 60, null: false
    t.text "prdetails", null: false
    t.string "typepresent", default: "Free"
    t.decimal "price", precision: 8, scale: 2
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.string "pvoice", default: "none"
  end

  create_table "userfields", force: :cascade do |t|
    t.string "ufield", limit: 60, default: "", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "admin", default: false
    t.string "firstname", limit: 60, default: "", null: false
    t.string "lastname", limit: 60, default: "", null: false
    t.string "phone", default: "0877558977"
    t.text "userinfo", default: "", null: false
    t.integer "userfield_id"
    t.integer "usertype_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "usertypes", force: :cascade do |t|
    t.string "utype", limit: 60, default: "", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
