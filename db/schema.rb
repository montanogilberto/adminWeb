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

ActiveRecord::Schema.define(version: 20190610151655) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "acts", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "courts", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "customer_types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "customers", force: :cascade do |t|
    t.string "name"
    t.string "adress"
    t.string "adress2"
    t.string "email"
    t.string "celular"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.bigint "customer_type_id"
    t.index ["customer_type_id"], name: "index_customers_on_customer_type_id"
    t.index ["user_id"], name: "index_customers_on_user_id"
  end

  create_table "districts", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "state_id"
    t.index ["state_id"], name: "index_districts_on_state_id"
  end

  create_table "expedients", force: :cascade do |t|
    t.string "NoExpedient"
    t.datetime "year"
    t.boolean "active"
    t.string "actor"
    t.string "defendant"
    t.string "customer"
    t.money "fee", scale: 2
    t.money "payment", scale: 2
    t.money "saldo", scale: 2
    t.bigint "court_id"
    t.bigint "state_id"
    t.bigint "district_id"
    t.bigint "act_id"
    t.bigint "matter_id"
    t.bigint "judgment_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["act_id"], name: "index_expedients_on_act_id"
    t.index ["court_id"], name: "index_expedients_on_court_id"
    t.index ["district_id"], name: "index_expedients_on_district_id"
    t.index ["judgment_id"], name: "index_expedients_on_judgment_id"
    t.index ["matter_id"], name: "index_expedients_on_matter_id"
    t.index ["state_id"], name: "index_expedients_on_state_id"
  end

  create_table "judgments", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "matters", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "states", force: :cascade do |t|
    t.string "name"
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

  add_foreign_key "customers", "customer_types"
  add_foreign_key "customers", "users"
  add_foreign_key "districts", "states"
  add_foreign_key "expedients", "acts"
  add_foreign_key "expedients", "courts"
  add_foreign_key "expedients", "districts"
  add_foreign_key "expedients", "judgments"
  add_foreign_key "expedients", "matters"
  add_foreign_key "expedients", "states"
end
