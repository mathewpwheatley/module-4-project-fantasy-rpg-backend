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

ActiveRecord::Schema.define(version: 2020_07_06_232039) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "abilities", force: :cascade do |t|
    t.string "name", null: false
    t.string "group", null: false
    t.string "description", null: false
    t.integer "healing_effect", default: 0, null: false
    t.integer "damage_effect", default: 0, null: false
    t.integer "cooldown", default: 0, null: false
    t.bigint "character_id", null: false
    t.index ["character_id"], name: "index_abilities_on_character_id"
  end

  create_table "characters", force: :cascade do |t|
    t.string "name", null: false
    t.string "group", null: false
    t.string "catchphrase", null: false
    t.string "image_url", null: false
    t.integer "health", default: 100, null: false
  end

  create_table "game_saves", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "character_id", null: false
    t.integer "current_round", default: 0, null: false
    t.index ["character_id"], name: "index_game_saves_on_character_id"
    t.index ["user_id"], name: "index_game_saves_on_user_id"
  end

  create_table "modifiers", force: :cascade do |t|
    t.integer "health_effect", default: 0, null: false
    t.integer "healing_effect", default: 0, null: false
    t.integer "damage_effect", default: 0, null: false
    t.integer "cooldown_effect", default: 0, null: false
    t.bigint "game_save_id", null: false
    t.index ["game_save_id"], name: "index_modifiers_on_game_save_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", null: false
    t.string "first_name"
    t.string "last_name"
  end

  add_foreign_key "abilities", "characters", on_delete: :cascade
  add_foreign_key "game_saves", "characters", on_delete: :cascade
  add_foreign_key "game_saves", "users", on_delete: :cascade
  add_foreign_key "modifiers", "game_saves", column: "game_save_id", on_delete: :cascade
end
