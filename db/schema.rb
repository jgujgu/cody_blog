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

ActiveRecord::Schema.define(version: 20170212180370) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "monologue_posts", force: :cascade do |t|
    t.boolean  "published"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.string   "title"
    t.text     "content"
    t.string   "url"
    t.datetime "published_at"
    t.index ["url"], name: "index_monologue_posts_on_url", unique: true, using: :btree
  end

  create_table "monologue_taggings", force: :cascade do |t|
    t.integer "post_id"
    t.integer "tag_id"
    t.index ["post_id"], name: "index_monologue_taggings_on_post_id", using: :btree
    t.index ["tag_id"], name: "index_monologue_taggings_on_tag_id", using: :btree
  end

  create_table "monologue_tags", force: :cascade do |t|
    t.string "name"
    t.index ["name"], name: "index_monologue_tags_on_name", using: :btree
  end

  create_table "monologue_users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
