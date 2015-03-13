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

ActiveRecord::Schema.define(version: 20150312233441) do

  create_table "investment_properties", force: :cascade do |t|
    t.string   "mlsNum"
    t.date     "analysisDate"
    t.date     "listedDate"
    t.date     "soldDate"
    t.string   "address"
    t.float    "listPrice"
    t.float    "downPayment"
    t.float    "totGrossInc"
    t.float    "vacCrdtAllow"
    t.float    "goi"
    t.float    "totOpExp"
    t.float    "noi"
    t.float    "deprec"
    t.float    "cashOnCashRet"
    t.float    "principleRed"
    t.float    "apprec"
    t.float    "totROI"
    t.float    "retOnEquity"
    t.float    "grm"
    t.float    "capRate"
    t.float    "debtCoverRatio"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.string   "email"
    t.string   "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "password"
  end

end
