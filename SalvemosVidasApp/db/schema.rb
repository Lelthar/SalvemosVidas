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

ActiveRecord::Schema.define(version: 2019_01_05_201635) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "commentaries", force: :cascade do |t|
    t.string "datail"
    t.bigint "user_id"
    t.bigint "forum_post_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["forum_post_id"], name: "index_commentaries_on_forum_post_id"
    t.index ["user_id"], name: "index_commentaries_on_user_id"
  end

  create_table "forum_posts", force: :cascade do |t|
    t.string "title"
    t.string "datail"
    t.string "category"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_forum_posts_on_user_id"
  end

  create_table "images", force: :cascade do |t|
    t.string "path"
    t.bigint "slide_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["slide_id"], name: "index_images_on_slide_id"
  end

  create_table "lessons", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "category"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_lessons_on_user_id"
  end

  create_table "paragraphs", force: :cascade do |t|
    t.string "information"
    t.bigint "slide_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["slide_id"], name: "index_paragraphs_on_slide_id"
  end

  create_table "practices", force: :cascade do |t|
    t.string "title"
    t.string "category"
    t.string "description"
    t.bigint "lesson_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["lesson_id"], name: "index_practices_on_lesson_id"
  end

  create_table "questions", force: :cascade do |t|
    t.string "description"
    t.string "correct"
    t.string "incorrect1"
    t.string "incorrect2"
    t.string "incorrect3"
    t.bigint "practice_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["practice_id"], name: "index_questions_on_practice_id"
  end

  create_table "slides", force: :cascade do |t|
    t.string "title"
    t.string "type"
    t.bigint "lesson_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["lesson_id"], name: "index_slides_on_lesson_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "username", default: "", null: false
    t.string "uid"
    t.string "provider"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "type"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "commentaries", "forum_posts"
  add_foreign_key "commentaries", "users"
  add_foreign_key "forum_posts", "users"
  add_foreign_key "images", "slides"
  add_foreign_key "lessons", "users"
  add_foreign_key "paragraphs", "slides"
  add_foreign_key "practices", "lessons"
  add_foreign_key "questions", "practices"
  add_foreign_key "slides", "lessons"
end
