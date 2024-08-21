# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2024_08_21_124333) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "countries", force: :cascade do |t|
    t.string "name"
    t.string "code"
    t.integer "wines_count"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "handle", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "last_sign_in_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["handle"], name: "index_users_on_handle", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "wine_experiences", force: :cascade do |t|
    t.date "tasted_on"
    t.string "location"
    t.text "notes"
    t.integer "price"
    t.decimal "rating"
    t.bigint "user_id", null: false
    t.bigint "wine_vintage_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "gift", default: false
    t.index ["user_id"], name: "index_wine_experiences_on_user_id"
    t.index ["wine_vintage_id"], name: "index_wine_experiences_on_wine_vintage_id"
  end

  create_table "wine_vintages", force: :cascade do |t|
    t.decimal "alcohol"
    t.integer "vintage"
    t.bigint "wine_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["wine_id"], name: "index_wine_vintages_on_wine_id"
  end

  create_table "wineries", force: :cascade do |t|
    t.string "name"
    t.string "location"
    t.bigint "country_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["country_id"], name: "index_wineries_on_country_id"
  end

  create_table "wines", force: :cascade do |t|
    t.string "name"
    t.string "edition"
    t.string "variety"
    t.bigint "winery_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["winery_id"], name: "index_wines_on_winery_id"
  end

  add_foreign_key "wine_experiences", "users"
  add_foreign_key "wine_experiences", "wine_vintages"
  add_foreign_key "wine_vintages", "wines"
  add_foreign_key "wineries", "countries"
  add_foreign_key "wines", "wineries"
end
