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

ActiveRecord::Schema.define(version: 2020_11_09_230701) do

  create_table "makes", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "models", force: :cascade do |t|
    t.string "name"
    t.integer "year"
    t.integer "msrp"
    t.string "car_type"
    t.string "hp"
    t.string "mpg"
    t.string "torque"
    t.integer "seats"
    t.string "description"
    t.boolean "favorite"
    t.string "image"
    t.integer "make_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["make_id"], name: "index_models_on_make_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.string "review"
    t.integer "model_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["model_id"], name: "index_reviews_on_model_id"
  end

  add_foreign_key "models", "makes"
  add_foreign_key "reviews", "models"
end
