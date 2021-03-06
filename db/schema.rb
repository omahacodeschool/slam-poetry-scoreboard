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

ActiveRecord::Schema.define(:version => 20141010183511) do

  create_table "masters", :force => true do |t|
    t.string   "email"
    t.string   "crypted_password"
    t.string   "salt"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "performances", :force => true do |t|
    t.integer  "round_id"
    t.float    "score1"
    t.float    "score2"
    t.float    "score3"
    t.float    "score4"
    t.float    "score5"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "poet_id"
  end

  create_table "poets", :force => true do |t|
    t.string   "name"
    t.string   "photo"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.integer  "performance_id"
  end

  create_table "rounds", :force => true do |t|
    t.integer  "slam_id"
    t.integer  "round_number"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "slams", :force => true do |t|
    t.integer  "master_id"
    t.string   "name"
    t.date     "event_date"
    t.string   "description"
    t.datetime "created_at",                       :null => false
    t.datetime "updated_at",                       :null => false
    t.boolean  "slam_complete", :default => false
  end

end
