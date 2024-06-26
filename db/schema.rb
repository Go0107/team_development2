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

ActiveRecord::Schema[7.1].define(version: 2024_03_29_043414) do
  create_table "reports", force: :cascade do |t|
    t.integer "user_id"
    t.date "date"
    t.integer "study_time"
    t.string "study_curriculum"
    t.string "study_content"
    t.string "reflection"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_reports_on_user_id"
  end

  create_table "user_awards", force: :cascade do |t|
    t.integer "user_id", null: false
    t.boolean "award_1"
    t.boolean "award_2"
    t.boolean "award_3"
    t.boolean "award_4"
    t.boolean "award_5"
    t.boolean "award_6"
    t.boolean "award_7"
    t.boolean "award_8"
    t.boolean "award_9"
    t.boolean "award_10"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_user_awards_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "reports", "users"
  add_foreign_key "user_awards", "users"
end
