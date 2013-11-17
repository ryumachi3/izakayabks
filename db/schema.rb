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

ActiveRecord::Schema.define(:version => 20131104110416) do

  create_table "genres", :force => true do |t|
    t.string   "genre_name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "genres_shops", :id => false, :force => true do |t|
    t.integer "shop_id"
    t.integer "genre_id"
  end

  create_table "kuchikomis", :force => true do |t|
    t.string   "shop_id"
    t.string   "kuchi_person_name"
    t.integer  "hyouka"
    t.text     "kuchi_text"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "moyori_stations", :force => true do |t|
    t.string   "stationname"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "osusume_people", :id => false, :force => true do |t|
    t.string   "osusume_person_name"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

  create_table "shops", :force => true do |t|
    t.string   "url"
    t.string   "shopname"
    t.integer  "moyori_station_id"
    t.integer  "yoka_count",        :default => 0, :null => false
    t.integer  "kaisya_flag"
    t.string   "osusume_person"
    t.text     "memo"
    t.integer  "kojin_hyouka"
    t.integer  "yosa_count",        :default => 0, :null => false
    t.datetime "created_at",                       :null => false
    t.datetime "updated_at",                       :null => false
    t.float    "heikin_hyouka"
  end

  create_table "shops_tags", :id => false, :force => true do |t|
    t.string  "tag"
    t.integer "shop_id"
  end

  create_table "tsubuyakis", :force => true do |t|
    t.integer  "shop_id"
    t.string   "tsubu_person_name"
    t.text     "tsubu_text"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "use_rirekis", :force => true do |t|
    t.date     "use_day"
    t.string   "use_event"
    t.integer  "use_number"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "shop_id"
  end

  add_index "use_rirekis", ["shop_id"], :name => "index_use_rirekis_on_shop_id"

end
