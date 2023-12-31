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

ActiveRecord::Schema[7.0].define(version: 2023_09_04_190219) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "postgis"

  # Custom types defined in this database.
  # Note that some types may not work with other database engines. Be careful if changing database.
  create_enum "type", ["casa", "departamento", "oficina", "local", "lote", "bodega", "finca", "otro"]

  create_table "houses", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.geography "address_lonlat", limit: {:srid=>4326, :type=>"st_point", :geographic=>true}
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "slug"
    t.string "description"
    t.integer "price"
    t.integer "bedrooms"
    t.integer "bathrooms"
    t.integer "floorspace"
    t.enum "property_type", enum_type: "type"
    t.string "features", default: [], array: true
    t.index ["slug"], name: "index_houses_on_slug", unique: true
  end

end
