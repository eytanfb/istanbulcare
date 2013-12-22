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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20131222072001) do

  create_table "doctors", :force => true do |t|
    t.string   "email"
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "phone"
    t.string   "specialization"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "tc_no"
  end

  add_index "doctors", ["email"], :name => "index_doctors_on_email", :unique => true
  add_index "doctors", ["reset_password_token"], :name => "index_doctors_on_reset_password_token", :unique => true

  create_table "drugs", :force => true do |t|
    t.string   "name"
    t.text     "notes"
    t.integer  "prescription_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  add_index "drugs", ["prescription_id"], :name => "index_drugs_on_prescription_id"

  create_table "operations", :force => true do |t|
    t.integer  "patient_id"
    t.date     "date"
    t.string   "notes"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "tip_first"
    t.string   "tip_second"
  end

  add_index "operations", ["patient_id"], :name => "index_operations_on_patient_id"

  create_table "patients", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "tc_no"
    t.string   "phone"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "patients", ["email"], :name => "index_patients_on_email", :unique => true
  add_index "patients", ["reset_password_token"], :name => "index_patients_on_reset_password_token", :unique => true
  add_index "patients", ["tc_no"], :name => "index_patients_on_tc_no", :unique => true

  create_table "prescriptions", :force => true do |t|
    t.string   "prescription_code"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
    t.integer  "doctor_id"
    t.integer  "patient_id"
  end

  add_index "prescriptions", ["doctor_id"], :name => "index_prescriptions_on_doctor_id"
  add_index "prescriptions", ["patient_id"], :name => "index_prescriptions_on_patient_id"

  create_table "vaccines", :force => true do |t|
    t.date     "date"
    t.string   "tip"
    t.date     "expiration_date"
    t.string   "notes"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.integer  "patient_id"
  end

  create_table "visuals", :force => true do |t|
    t.integer  "patient_id"
    t.string   "tip"
    t.string   "image_url"
    t.date     "date"
    t.string   "notes"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "visuals", ["patient_id"], :name => "index_visuals_on_patient_id"

end
