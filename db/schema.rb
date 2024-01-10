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

ActiveRecord::Schema[7.1].define(version: 2024_01_10_024904) do
  create_table "admissions", force: :cascade do |t|
    t.date "admitted_date"
    t.text "notes"
    t.date "discharge_date"
    t.integer "diagnosis_id", null: false
    t.integer "assigned_staff_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "patient_id", null: false
    t.index ["assigned_staff_id"], name: "index_admissions_on_assigned_staff_id"
    t.index ["diagnosis_id"], name: "index_admissions_on_diagnosis_id"
    t.index ["patient_id"], name: "index_admissions_on_patient_id"
  end

  create_table "assigned_staff_types", force: :cascade do |t|
    t.string "type"
    t.boolean "active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "assigned_staffs", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.boolean "active"
    t.integer "assigned_staff_type_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["assigned_staff_type_id"], name: "index_assigned_staffs_on_assigned_staff_type_id"
  end

  create_table "diagnoses", force: :cascade do |t|
    t.string "code"
    t.string "title"
    t.string "display"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "languages", force: :cascade do |t|
    t.string "language_name"
    t.boolean "active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "legal_guardians", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "middle_initial"
    t.date "date_of_birth"
    t.string "phone"
    t.string "email"
    t.integer "relationship_id", null: false
    t.integer "patient_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["patient_id"], name: "index_legal_guardians_on_patient_id"
    t.index ["relationship_id"], name: "index_legal_guardians_on_relationship_id"
  end

  create_table "patients", force: :cascade do |t|
    t.string "mrn"
    t.string "first_name"
    t.string "last_name"
    t.string "middle_initial"
    t.date "date_of_birth"
    t.string "phone"
    t.string "email"
    t.boolean "deceased"
    t.boolean "terminated"
    t.integer "language_id", null: false
    t.integer "sex_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["language_id"], name: "index_patients_on_language_id"
    t.index ["sex_id"], name: "index_patients_on_sex_id"
  end

  create_table "relationships", force: :cascade do |t|
    t.string "relationship_type"
    t.boolean "active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sexes", force: :cascade do |t|
    t.string "sex_name"
    t.boolean "active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "admissions", "assigned_staffs"
  add_foreign_key "admissions", "diagnoses"
  add_foreign_key "admissions", "patients"
  add_foreign_key "assigned_staffs", "assigned_staff_types"
  add_foreign_key "legal_guardians", "patients"
  add_foreign_key "legal_guardians", "relationships"
  add_foreign_key "patients", "languages"
  add_foreign_key "patients", "sexes"
end
