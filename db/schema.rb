# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_11_10_121038) do

  create_table "addinfos", force: :cascade do |t|
    t.text "needs"
    t.text "cominfo"
    t.integer "countryid"
    t.integer "cityid"
    t.integer "metroid"
    t.string "street"
    t.string "house"
    t.integer "payment"
    t.string "valuta"
    t.integer "workid"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "cities", force: :cascade do |t|
    t.integer "countryid"
    t.string "ciname"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "countries", force: :cascade do |t|
    t.string "coname"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "experiences", force: :cascade do |t|
    t.string "exname"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "metros", force: :cascade do |t|
    t.integer "cityid"
    t.string "mename"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "searchers", force: :cascade do |t|
    t.string "name"
    t.string "surname"
    t.text "skills"
    t.integer "phone"
    t.integer "profession"
    t.integer "wtime"
    t.integer "country_id"
    t.integer "city_id"
    t.integer "payment"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "experience"
    t.integer "user_id"
    t.integer "activ", default: 0
    t.integer "value", default: 1
  end

  create_table "timeworks", force: :cascade do |t|
    t.string "wotime"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "type"
    t.boolean "typeof"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "valuta", force: :cascade do |t|
    t.string "valuena"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "worklists", force: :cascade do |t|
    t.string "woname"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "works", force: :cascade do |t|
    t.string "strukt"
    t.string "company"
    t.string "name"
    t.string "surname"
    t.string "email"
    t.integer "phone"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "userid"
    t.integer "addinfoid"
    t.text "needs"
    t.text "cominfo"
    t.integer "countryid"
    t.integer "cityid"
    t.string "street"
    t.string "house"
    t.integer "payment"
    t.integer "profession"
    t.integer "wtime"
    t.integer "experience"
    t.integer "activ", default: 0
    t.integer "value"
  end

end
