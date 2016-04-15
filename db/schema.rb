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

ActiveRecord::Schema.define(version: 20160415102807) do

  create_table "certificates", force: :cascade do |t|
    t.string   "name"
    t.date     "validity_date"
    t.date     "cert_date"
    t.integer  "exam_id"
    t.integer  "user_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "certificates", ["exam_id"], name: "index_certificates_on_exam_id"
  add_index "certificates", ["user_id"], name: "index_certificates_on_user_id"

  create_table "education_pre_records", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "education_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "education_pre_records", ["education_id"], name: "index_education_pre_records_on_education_id"
  add_index "education_pre_records", ["user_id"], name: "index_education_pre_records_on_user_id"

  create_table "education_records", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "education_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "education_records", ["education_id"], name: "index_education_records_on_education_id"
  add_index "education_records", ["user_id"], name: "index_education_records_on_user_id"

  create_table "educations", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.string   "purpose"
    t.string   "location"
    t.integer  "fee"
    t.integer  "exam_fee"
    t.date     "start_date"
    t.date     "finish_date"
    t.integer  "total_hour"
    t.boolean  "send_email"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "creater_id"
    t.integer  "quota"
  end

  create_table "exams", force: :cascade do |t|
    t.string   "name"
    t.date     "exam_date"
    t.string   "result"
    t.integer  "education_id"
    t.integer  "user_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "exams", ["education_id"], name: "index_exams_on_education_id"
  add_index "exams", ["user_id"], name: "index_exams_on_user_id"

  create_table "job_educations", force: :cascade do |t|
    t.integer  "job_id"
    t.integer  "education_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "job_educations", ["education_id"], name: "index_job_educations_on_education_id"
  add_index "job_educations", ["job_id"], name: "index_job_educations_on_job_id"

  create_table "jobs", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_profiles", force: :cascade do |t|
    t.string   "name"
    t.string   "surname"
    t.string   "email"
    t.string   "mobile_phone"
    t.string   "register_no"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "user_id"
  end

  add_index "user_profiles", ["user_id"], name: "index_user_profiles_on_user_id"

  create_table "users", force: :cascade do |t|
    t.boolean  "admin"
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
