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

ActiveRecord::Schema.define(version: 2020_09_03_125200) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "components", force: :cascade do |t|
    t.string "name"
    t.bigint "product_id", null: false
    t.bigint "material_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["material_id"], name: "index_components_on_material_id"
    t.index ["product_id"], name: "index_components_on_product_id"
  end

  create_table "containers", force: :cascade do |t|
    t.string "address"
    t.bigint "map_id"
    t.float "longitude"
    t.float "latitude"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["map_id"], name: "index_containers_on_map_id"
  end

  create_table "garbages", force: :cascade do |t|
    t.string "color"
    t.bigint "place_id", null: false
    t.string "accepted_materials", array: true
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["place_id"], name: "index_garbages_on_place_id"
  end

  create_table "maps", force: :cascade do |t|
    t.bigint "place_id", null: false
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["place_id"], name: "index_maps_on_place_id"
  end

  create_table "materials", force: :cascade do |t|
    t.string "name"
    t.string "slug"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "long_name"
    t.text "recyclability"
    t.text "status"
  end

  create_table "places", force: :cascade do |t|
    t.string "name"
    t.string "postcode"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "photo_url"
    t.string "instruction", array: true
    t.string "contact", array: true
    t.float "latitude"
    t.float "longitude"
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.string "barcode"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "brand"
    t.jsonb "off"
    t.boolean "clean"
    t.string "photo_url"
  end

  add_foreign_key "components", "materials"
  add_foreign_key "components", "products"
  add_foreign_key "garbages", "places"
  add_foreign_key "maps", "places"
end
