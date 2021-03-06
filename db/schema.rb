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

ActiveRecord::Schema.define(:version => 20120414025113) do

  create_table "ads", :force => true do |t|
    t.string   "adtitle"
    t.text     "adcontent"
    t.date     "adstartdate"
    t.date     "adenddate"
    t.float    "adprice"
    t.integer  "adcount"
    t.string   "adlocation"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "comments", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "events", :force => true do |t|
    t.integer  "place_id"
    t.string   "evname"
    t.string   "evprize"
    t.integer  "evnummax"
    t.date     "evdeadline"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "fields", :force => true do |t|
    t.string   "fieldname"
    t.float    "fieldwidth"
    t.float    "fieldlength"
    t.string   "fieldground"
    t.boolean  "lu"
    t.boolean  "ma"
    t.boolean  "mi"
    t.boolean  "ju"
    t.boolean  "vi"
    t.boolean  "sa"
    t.boolean  "do"
    t.time     "starthour"
    t.time     "endhour"
    t.float    "dayrate"
    t.float    "nightrate"
    t.string   "promo"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.integer  "place_id"
  end

  create_table "people", :force => true do |t|
    t.boolean  "usertype"
    t.string   "name"
    t.string   "lastname"
    t.string   "doctype"
    t.string   "docnumber"
    t.string   "email"
    t.string   "password"
    t.date     "birthdate"
    t.string   "cellphone"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "places", :force => true do |t|
    t.string   "nameplace"
    t.string   "address"
    t.string   "district"
    t.string   "telephone"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "gmaddress"
    t.integer  "person_id"
  end

  create_table "searches", :force => true do |t|
    t.string   "district"
    t.date     "attentionday"
    t.time     "sincehour"
    t.time     "tohour"
    t.string   "other"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "services", :force => true do |t|
    t.integer  "place_id"
    t.string   "svctype"
    t.float    "svcprice"
    t.string   "svcpriceconcept"
    t.text     "svcdescription"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

end
