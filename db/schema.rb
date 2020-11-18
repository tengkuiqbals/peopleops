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

ActiveRecord::Schema.define(version: 2020_11_17_135656) do

  create_table "companies", force: :cascade do |t|
    t.string "comp_name"
    t.string "comp_description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "embassies", force: :cascade do |t|
    t.string "emb_name"
    t.string "emb_description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "employees", force: :cascade do |t|
    t.string "emp_id"
    t.string "emp_name"
    t.date "emp_birthdate"
    t.string "emp_religion"
    t.date "emp_orihire"
    t.date "emp_hire"
    t.date "emp_resign"
    t.date "emp_maritaldate"
    t.string "emp_compid"
    t.string "emp_email"
    t.string "emp_gender"
    t.string "emp_marital"
    t.string "emp_bank"
    t.string "emp_accbank"
    t.string "emp_accholder"
    t.string "emp_npwp"
    t.string "emp_ktp"
    t.string "emp_bpjstku"
    t.string "emp_bpjskes"
    t.string "job_name"
    t.string "lev_name"
    t.string "branch_name"
    t.string "emp_mobile"
    t.string "emp_orgid1"
    t.string "emp_orgid4"
    t.string "emp_pp"
    t.string "emp_linemgr"
    t.string "emp_mgremail"
    t.string "emp_status"
    t.string "emp_famcard"
    t.string "emp_nationality"
    t.integer "salary"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "organizations", force: :cascade do |t|
    t.string "org_name"
    t.string "org_description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "email"
    t.string "password_digest"
    t.string "role"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
  end

end
