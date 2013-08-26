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

ActiveRecord::Schema.define(version: 20130822234315) do

  create_table "environments", force: true do |t|
    t.string   "environment"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "environments", ["environment"], name: "index_environments_on_environment", unique: true

  create_table "organisations", force: true do |t|
    t.string   "reference"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "servicelevel"
    t.string   "supportlevel"
    t.string   "relationship"
    t.boolean  "active"
  end

  add_index "organisations", ["reference"], name: "index_organisations_on_reference", unique: true

  create_table "supportlevels", force: true do |t|
    t.string   "level"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "hours"
    t.string   "days"
    t.string   "exclusions"
  end

  add_index "supportlevels", ["level"], name: "index_supportlevels_on_level", unique: true

end
