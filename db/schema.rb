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

ActiveRecord::Schema.define(version: 2019_04_17_100537) do

  create_table "accounts", force: :cascade do |t|
    t.integer "user_id"
    t.string "currency_name", default: "Cat Coins"
    t.integer "amount", default: 100
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_accounts_on_user_id"
  end

  create_table "companies", force: :cascade do |t|
    t.integer "investment_id"
    t.string "name"
    t.integer "rate"
    t.integer "worth"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["investment_id"], name: "index_companies_on_investment_id"
  end

  create_table "investments", force: :cascade do |t|
    t.integer "amount", default: 0
    t.integer "user_id"
    t.integer "account_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "company_id"
    t.index ["account_id"], name: "index_investments_on_account_id"
    t.index ["company_id"], name: "index_investments_on_company_id"
    t.index ["user_id"], name: "index_investments_on_user_id"
  end

  create_table "savings", force: :cascade do |t|
    t.integer "amount", default: 0
    t.integer "user_id"
    t.integer "account_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["account_id"], name: "index_savings_on_account_id"
    t.index ["user_id"], name: "index_savings_on_user_id"
  end

  create_table "transfers", force: :cascade do |t|
    t.string "receiver_id"
    t.string "sender_id"
    t.string "amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.integer "age"
    t.string "email"
    t.string "gender"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
  end

end
