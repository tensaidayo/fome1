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

ActiveRecord::Schema.define(version: 2019_04_22_042002) do

  create_table "ingredients", force: :cascade do |t|
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ingredients_plates", id: false, force: :cascade do |t|
    t.integer "plate_id"
    t.integer "ingredient_id"
    t.index ["ingredient_id"], name: "index_ingredients_plates_on_ingredient_id"
    t.index ["plate_id"], name: "index_ingredients_plates_on_plate_id"
  end

  create_table "plates", force: :cascade do |t|
    t.string "description"
    t.float "price"
    t.time "cooktime"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "restaurant_id"
    t.index ["restaurant_id"], name: "index_plates_on_restaurant_id"
  end

  create_table "restaurants", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "fone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
