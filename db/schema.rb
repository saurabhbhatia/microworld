# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20100408112536) do

  create_table "groups", :force => true do |t|
    t.string   "group_name"
    t.string   "message"
    t.integer  "size"
    t.integer  "total"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "groups_ledgers", :force => true do |t|
    t.integer  "group_id"
    t.integer  "ledger_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ledgers", :force => true do |t|
    t.integer "amount"
    t.integer "uid"
  end

  create_table "ledgers_users", :force => true do |t|
    t.integer  "user_id"
    t.integer  "ledger_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "refunds", :force => true do |t|
    t.integer  "user_id"
    t.string   "name"
    t.integer  "amount"
    t.text     "reason"
    t.string   "user_name"
    t.integer  "group_id"
    t.date     "date_refund"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "refunds_users", :force => true do |t|
    t.integer  "user_id"
    t.integer  "refund_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "userps", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "username"
    t.string   "password"
    t.string   "verify_password"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.integer  "idno"
    t.string   "username"
    t.integer  "age"
    t.text     "address"
    t.text     "reason_for_saving"
    t.string   "birthplace"
    t.string   "image"
    t.string   "groups"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "group_id"
    t.integer  "amount_total"
  end

end
