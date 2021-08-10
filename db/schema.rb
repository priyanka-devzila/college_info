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

ActiveRecord::Schema.define(version: 2021_08_10_074643) do

  create_table "courses", force: :cascade do |t|
    t.string "name", null: false
    t.integer "duration"
    t.decimal "fees", precision: 16, scale: 2, default: "0.0"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "invoices", force: :cascade do |t|
    t.string "semester"
    t.string "fee_description"
    t.decimal "fee_amount", precision: 16, scale: 2, default: "0.0"
    t.decimal "payment", precision: 16, scale: 2, default: "0.0"
    t.decimal "amount_due", precision: 16, scale: 2, default: "0.0"
    t.decimal "total_due", precision: 16, scale: 2, default: "0.0"
    t.date "payment_date"
    t.integer "person_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["person_id"], name: "index_invoices_on_person_id"
  end

  create_table "people", force: :cascade do |t|
    t.string "name", null: false
    t.string "email"
    t.date "date_of_birth", null: false
    t.string "phone_number"
    t.integer "age"
    t.string "address"
    t.string "sex"
    t.string "religion"
    t.date "join_date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_people_on_email", unique: true
  end

  create_table "people_courses", force: :cascade do |t|
    t.integer "person_id"
    t.integer "course_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["course_id"], name: "index_people_courses_on_course_id"
    t.index ["person_id"], name: "index_people_courses_on_person_id"
  end

  create_table "people_roles", force: :cascade do |t|
    t.integer "person_id"
    t.integer "role_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["person_id"], name: "index_people_roles_on_person_id"
    t.index ["role_id"], name: "index_people_roles_on_role_id"
  end

  create_table "roles", force: :cascade do |t|
    t.string "role_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "semesters", force: :cascade do |t|
    t.integer "semester_number"
    t.integer "course_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["course_id"], name: "index_semesters_on_course_id"
  end

  create_table "semesters_subjects", force: :cascade do |t|
    t.integer "semester_id"
    t.integer "subject_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["semester_id"], name: "index_semesters_subjects_on_semester_id"
    t.index ["subject_id"], name: "index_semesters_subjects_on_subject_id"
  end

  create_table "subjects", force: :cascade do |t|
    t.string "name"
    t.integer "max_marks"
    t.integer "pass_marks"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "invoices", "people"
  add_foreign_key "semesters", "courses"
end
