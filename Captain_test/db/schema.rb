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

ActiveRecord::Schema.define(version: 20180213203030) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "fighters", force: :cascade do |t|
    t.string "name"
    t.integer "damage", default: 10
    t.integer "hp", default: 100
    t.integer "strength", default: 0
    t.integer "dexterity", default: 0
    t.integer "intelligence", default: 0
    t.integer "experience", default: 0
    t.integer "level", default: 1
    t.integer "victory", default: 0
    t.integer "fight", default: 0
    t.integer "talent", default: 10
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "weapon_id"
    t.index ["weapon_id"], name: "index_fighters_on_weapon_id"
  end

  create_table "matches", force: :cascade do |t|
    t.string "first_fighter"
    t.string "second_fighter"
    t.string "winner"
    t.text "log"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "weapons", force: :cascade do |t|
    t.string "name"
    t.integer "dexterity", default: 0
    t.integer "strength", default: 0
    t.integer "intelligence", default: 0
    t.integer "damage", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "fighters", "weapons"
end
