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

ActiveRecord::Schema.define(version: 2020_06_30_223445) do

  create_table "countries", id: false, force: :cascade do |t|
    t.integer "id"
    t.string "iso"
    t.string "name"
  end

  create_table "countries_lists", id: false, force: :cascade do |t|
    t.integer "list_id"
    t.integer "country_id"
    t.index ["country_id"], name: "index_countries_lists_on_country_id"
    t.index ["list_id"], name: "index_countries_lists_on_list_id"
  end

  create_table "lists", force: :cascade do |t|
    t.string "name"
  end

end
