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

ActiveRecord::Schema[7.0].define(version: 2023_01_05_161020) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  # Custom types defined in this database.
  # Note that some types may not work with other database engines. Be careful if changing database.
  create_enum "enum_access", ["general", "members", "vips"]
  create_enum "enum_ilk", ["concert", "meet_n_greet", "battle"]

  create_table "bands", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.text "genre_tags"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "concerts", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "start_time"
    t.bigint "vanue_id", null: false
    t.text "genre_tags"
    t.string "ilk"
    t.string "access"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["vanue_id"], name: "index_concerts_on_vanue_id"
  end

  create_table "gigs", force: :cascade do |t|
    t.bigint "band_id", null: false
    t.bigint "concert_id", null: false
    t.integer "order"
    t.integer "duration_minutes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["band_id"], name: "index_gigs_on_band_id"
    t.index ["concert_id"], name: "index_gigs_on_concert_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "vanues", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.integer "rows"
    t.integer "seats_per_row"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "concerts", "vanues"
  add_foreign_key "gigs", "bands"
  add_foreign_key "gigs", "concerts"
end
