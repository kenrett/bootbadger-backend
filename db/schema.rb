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

ActiveRecord::Schema.define(version: 20171201191800) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "boots", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
  end

  create_table "slogans", force: :cascade do |t|
    t.string "body", null: false
    t.bigint "boot_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["boot_id"], name: "index_slogans_on_boot_id"
  end

  create_table "votes", force: :cascade do |t|
    t.bigint "boot_id"
    t.bigint "slogan_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["boot_id"], name: "index_votes_on_boot_id"
    t.index ["slogan_id"], name: "index_votes_on_slogan_id"
  end

  add_foreign_key "votes", "boots"
  add_foreign_key "votes", "slogans"
end
