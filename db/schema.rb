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

ActiveRecord::Schema.define(version: 2020_09_29_202547) do

  create_table "cacti", force: :cascade do |t|
    t.string "common_name", null: false
    t.string "genus", null: false
    t.string "species", null: false
    t.string "cultivar"
    t.string "imageUrl", null: false
    t.text "light_requirements"
    t.text "soil_requirements"
    t.text "water_requirements"
    t.text "fruit"
    t.text "flower"
    t.text "hardiness", null: false
    t.text "fertilizer"
    t.text "propagation"
    t.text "growth_rate"
    t.text "max_size"
    t.text "interesting_facts"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
