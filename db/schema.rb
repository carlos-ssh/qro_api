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

ActiveRecord::Schema[7.0].define(version: 2022_03_18_175825) do
  create_table "properties", force: :cascade do |t|
    t.integer "user_id"
    t.string "name"
    t.string "address"
    t.string "description"
    t.decimal "price"
    t.integer "rooms"
    t.integer "bathrooms"
    t.integer "meters"
    t.integer "garage"
    t.string "image"
    t.boolean "for_sale", default: true
    t.string "status", default: "disponible"
    t.datetime "available_date", precision: nil
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_properties_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
