# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20211128172120) do

  create_table "cats", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "name"
    t.text     "description"
    t.string   "picture"
    t.date     "dateofbirth"
    t.string   "breed"
    t.string   "sex"
    t.string   "origin"
    t.boolean  "dead"
    t.text     "causeofdeath"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "diseases", force: :cascade do |t|
    t.integer  "cat_id"
    t.string   "veterinarian"
    t.date     "dateofdiagnosis"
    t.text     "condition"
    t.text     "conditionform"
    t.boolean  "conditionrelapse"
    t.boolean  "remission"
    t.date     "remissiondate"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "observationbiometrics", force: :cascade do |t|
    t.integer  "treatment_id"
    t.integer  "Day0TempF"
    t.integer  "Day1TempF"
    t.integer  "Day2TempF"
    t.integer  "Day3TempF"
    t.integer  "Day4TempF"
    t.integer  "Day5TempF"
    t.integer  "Week0WhiteBlood"
    t.integer  "Week1WhiteBlood"
    t.integer  "Week2WhiteBlood"
    t.integer  "Week3WhiteBlood"
    t.integer  "Week4WhiteBlood"
    t.integer  "Week5WhiteBlood"
    t.integer  "Week6WhiteBlood"
    t.integer  "Week7WhiteBlood"
    t.integer  "Week8WhiteBlood"
    t.integer  "Week9WhiteBlood"
    t.integer  "Week10WhiteBlood"
    t.integer  "Week11WhiteBlood"
    t.integer  "Week12WhiteBlood"
    t.integer  "Week0lymphocytes"
    t.integer  "Week1lymphocytes"
    t.integer  "Week2lymphocytes"
    t.integer  "Week3lymphocytes"
    t.integer  "Week4lymphocytes"
    t.integer  "Week5lymphocytes"
    t.integer  "Week6lymphocytes"
    t.integer  "Week7lymphocytes"
    t.integer  "Week8lymphocytes"
    t.integer  "Week9lymphocytes"
    t.integer  "Week10lymphocytes"
    t.integer  "Week11lymphocytes"
    t.integer  "Week12lymphocytes"
    t.integer  "Week1PCV"
    t.integer  "Week2PCV"
    t.integer  "Week3PCV"
    t.integer  "Week4PCV"
    t.integer  "Week5PCV"
    t.integer  "Week6PCV"
    t.integer  "Week7PCV"
    t.integer  "Week8PCV"
    t.integer  "Week9PCV"
    t.integer  "Week10PCV"
    t.integer  "Week11PCV"
    t.integer  "Week12PCV"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "treatments", force: :cascade do |t|
    t.integer  "disease_id"
    t.date     "startdate"
    t.date     "enddate"
    t.integer  "totalweeks"
    t.text     "medicine"
    t.text     "dose"
    t.text     "device"
    t.text     "surgery"
    t.boolean  "treatmentcomplete"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

end
