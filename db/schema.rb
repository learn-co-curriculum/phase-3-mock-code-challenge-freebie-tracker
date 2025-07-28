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

ActiveRecord::Schema.define(version: 2025_07_28_165922) do

  create_table "companies", force: :cascade do |t|
    t.string "name"
    t.integer "founding_year"
  end

  create_table "devs", force: :cascade do |t|
    t.string "name"
  end

  create_table "freebies", force: :cascade do |t|
    t.string "item_name"
    t.integer "value"
    t.integer "company_id"
    t.integer "dev_id"
  end

end
