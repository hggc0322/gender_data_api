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

ActiveRecord::Schema.define(version: 2019_03_23_162756) do

  create_table "companies", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "industry"
    t.decimal "median_gender_gap_2019"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "benefits"
  end

  create_table "regions", force: :cascade do |t|
    t.string "name"
    t.boolean "higher_than_2016_national_average"
    t.integer "rank_2016"
    t.string "top_1"
    t.string "top_2"
    t.string "top_3"
    t.string "bottom_1"
    t.string "bottom_2"
    t.string "bottom_3"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.decimal "mean_wage_gap_2016"
    t.decimal "mean_wage_gap_change"
  end

end
