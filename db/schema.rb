# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2023_07_23_175320) do

  create_table "care_tasks", force: :cascade do |t|
    t.string "name", null: false
    t.text "description"
    t.date "due_date", null: false
    t.integer "plant_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["plant_id"], name: "index_care_tasks_on_plant_id"
  end

  create_table "plants", force: :cascade do |t|
    t.string "name", null: false
    t.string "species", null: false
    t.string "image_url", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "care_tasks", "plants"
end
