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

ActiveRecord::Schema.define(:version => 20101229093939) do

  create_table "attachments", :force => true do |t|
    t.integer  "size"
    t.integer  "height"
    t.integer  "width"
    t.integer  "parent_id"
    t.integer  "attachable_id"
    t.integer  "position"
    t.string   "content_type"
    t.string   "filename"
    t.string   "thumbnail"
    t.string   "attachable_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "groups", :force => true do |t|
    t.string   "group_name"
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
    t.string   "name"
    t.string   "user_id"
    t.integer  "amount"
    t.string   "user_name"
    t.integer  "group_id"
    t.date     "date_ledger"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ledgers_users", :force => true do |t|
    t.integer  "user_id"
    t.integer  "ledger_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "memberships", :force => true do |t|
    t.date     "birth_date"
    t.string   "birth_place"
    t.integer  "age"
    t.text     "address"
    t.string   "status"
    t.string   "occupation"
    t.integer  "income"
    t.integer  "no_of_children"
    t.integer  "children_school"
    t.binary   "image",             :limit => 16777215
    t.integer  "group_id"
    t.integer  "totalamount",                           :default => 0
    t.text     "history"
    t.text     "future_vision"
    t.text     "reason_for_saving"
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
    t.string   "login",                     :limit => 40
    t.string   "name",                      :limit => 100, :default => ""
    t.string   "email",                     :limit => 100
    t.string   "crypted_password",          :limit => 40
    t.string   "salt",                      :limit => 40
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "remember_token",            :limit => 40
    t.datetime "remember_token_expires_at"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
  end

  add_index "users", ["login"], :name => "index_users_on_login", :unique => true

end
