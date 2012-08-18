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

ActiveRecord::Schema.define(:version => 20120818035537) do

  create_table "places", :force => true do |t|
    t.string   "name",           :null => false
    t.string   "address",        :null => false
    t.text     "description"
    t.float    "latitude"
    t.float    "longitude"
    t.boolean  "gmaps"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.integer  "user_id"
    t.integer  "last_editor_id"
    t.string   "tabelog_url"
  end

  create_table "rails_admin_histories", :force => true do |t|
    t.text     "message"
    t.string   "username"
    t.integer  "item"
    t.string   "table"
    t.integer  "month",      :limit => 2
    t.integer  "year",       :limit => 5
    t.datetime "created_at",              :null => false
    t.datetime "updated_at",              :null => false
  end

  add_index "rails_admin_histories", ["item", "table", "month", "year"], :name => "index_rails_admin_histories"

  create_table "users", :force => true do |t|
    t.string   "provider"
    t.string   "uid"
    t.string   "screen_name"
    t.string   "name"
    t.datetime "created_at",                           :null => false
    t.datetime "updated_at",                           :null => false
    t.string   "role",           :default => "member"
    t.integer  "user_id"
    t.integer  "last_editor_id"
  end

end
