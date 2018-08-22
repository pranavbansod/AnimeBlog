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

ActiveRecord::Schema.define(version: 2018_08_22_065813) do

  create_table "anime_blogs", force: :cascade do |t|
    t.string "blog_by"
    t.string "anime_name"
    t.text "desc"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comments", force: :cascade do |t|
    t.string "commented_by"
    t.text "comment_text"
    t.integer "anime_blog_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["anime_blog_id"], name: "index_comments_on_anime_blog_id"
  end

end
