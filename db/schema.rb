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

ActiveRecord::Schema.define(version: 2020_03_11_153438) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "about_mes", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "name"
    t.string "profile_photo"
    t.text "about_me"
    t.string "phone"
    t.string "email"
    t.index ["user_id"], name: "index_about_mes_on_user_id"
  end

  create_table "pages", force: :cascade do |t|
    t.string "website_name"
    t.string "logo"
    t.string "nav_link_1"
    t.string "nav_link_2"
    t.string "filter_1"
    t.string "filter_2"
    t.string "filter_3"
    t.string "footer_link_1"
    t.string "footer_link_2"
    t.string "footer_link_3"
    t.bigint "user_id", null: false
    t.index ["user_id"], name: "index_pages_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password_digest"
    t.boolean "admin?"
    t.string "name"
  end

  add_foreign_key "about_mes", "users"
  add_foreign_key "pages", "users"
end
