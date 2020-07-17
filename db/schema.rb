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

ActiveRecord::Schema.define(version: 2020_07_16_225620) do

  create_table "superhero_teams", force: :cascade do |t|
    t.integer "superhero_id", null: false
    t.integer "team_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["superhero_id"], name: "index_superhero_teams_on_superhero_id"
    t.index ["team_id"], name: "index_superhero_teams_on_team_id"
  end

  create_table "superheros", force: :cascade do |t|
    t.string "name"
    t.string "power"
    t.string "weakness"
    t.integer "power_level"
    t.boolean "good"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "teams", force: :cascade do |t|
    t.string "name"
    t.string "locality"
    t.integer "established"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "superhero_teams", "superheros"
  add_foreign_key "superhero_teams", "teams"
end
