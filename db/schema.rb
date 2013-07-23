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

ActiveRecord::Schema.define(version: 20130704015256) do

  create_table "addresses", force: true do |t|
    t.string   "addr_one"
    t.string   "addr_two"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.integer  "patient_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "intakes", force: true do |t|
    t.string   "complaint_1"
    t.string   "complaint_2"
    t.string   "complaint_3"
    t.binary   "illness_history"
    t.integer  "pain_now"
    t.integer  "least_pain_one_week"
    t.integer  "worst_pain_one_week"
    t.integer  "average_pain_last_week"
    t.string   "pain_duration"
    t.string   "pain_timing"
    t.string   "context_of_pain"
    t.string   "modifying_factors"
    t.string   "signs_and_sympotoms"
    t.integer  "general_activity"
    t.integer  "mood"
    t.integer  "normal_work"
    t.integer  "sleep"
    t.integer  "enjoyment"
    t.integer  "concentration"
    t.integer  "interaction_with_others"
    t.string   "current_pain_meds"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "intakes_pain_qualities", force: true do |t|
    t.integer  "intake_id"
    t.integer  "pain_quality_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "medical_equipments", force: true do |t|
    t.boolean  "catheter"
    t.boolean  "wheelchair"
    t.boolean  "nebulizer"
    t.boolean  "glasses"
    t.boolean  "contacts"
    t.boolean  "hearing_aid"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pain_qualities", force: true do |t|
    t.string   "description"
    t.integer  "intake_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "patient_histories", force: true do |t|
    t.boolean  "alcohol"
    t.integer  "drinks_per_day"
    t.integer  "years_been_drnking"
    t.boolean  "smoking"
    t.integer  "packs_per_day"
    t.integer  "years_been_smoking"
    t.text     "illicit_drugs"
    t.text     "religion"
    t.text     "sibling_description"
    t.text     "surgical_history"
    t.text     "medical_history"
    t.boolean  "allergies"
    t.text     "allergy_description"
    t.integer  "patient_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "patients", force: true do |t|
    t.string   "last_name"
    t.string   "first_name"
    t.string   "middle_initial"
    t.string   "email"
    t.string   "gender"
    t.float    "height"
    t.integer  "weight"
    t.integer  "ssn"
    t.date "dob"
    t.string   "marital_status"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "status_id"
  end

  add_index "patients", ["email"], name: "email_uniqueness", unique: true, using: :btree

  create_table "patients_medical_equipments", force: true do |t|
    t.integer  "patient_id"
    t.integer  "medical_equipment_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "roles", force: true do |t|
    t.string   "description"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "statuses", force: true do |t|
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email"
    t.string   "passcode"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end

