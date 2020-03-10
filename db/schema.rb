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

ActiveRecord::Schema.define(version: 2020_03_10_143745) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "styles", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "background_color"
    t.string "block_height"
    t.string "name_color"
    t.string "name_style"
    t.string "name_size"
    t.string "text_color"
    t.string "text_style"
    t.string "text_size"
    t.index ["user_id"], name: "index_styles_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password_digest"
    t.boolean "admin?"
    t.string "name"
    t.string "avatar"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "styles", "users"
end
