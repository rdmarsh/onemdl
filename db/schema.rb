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

ActiveRecord::Schema.define(version: 20130929233954) do

  create_table "activities", force: true do |t|
    t.integer  "trackable_id"
    t.string   "trackable_type"
    t.integer  "owner_id"
    t.string   "owner_type"
    t.string   "key"
    t.text     "parameters"
    t.integer  "recipient_id"
    t.string   "recipient_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "activities", ["owner_id", "owner_id"], name: "index_activities_on_owner_id_and_owner_id"
  add_index "activities", ["recipient_id", "recipient_type"], name: "index_activities_on_recipient_id_and_recipient_type"
  add_index "activities", ["trackable_id", "trackable_type"], name: "index_activities_on_trackable_id_and_trackable_type"

  create_table "announcements", force: true do |t|
    t.text     "message"
    t.datetime "starts_at"
    t.datetime "ends_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "device_models", force: true do |t|
    t.string   "name"
    t.integer  "device_type_id"
    t.integer  "integer"
    t.integer  "manufacturer_id"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "device_models", ["device_type_id"], name: "index_device_models_on_device_type_id"
  add_index "device_models", ["manufacturer_id"], name: "index_device_models_on_manufacturer_id"
  add_index "device_models", ["name"], name: "index_device_models_on_name", unique: true

  create_table "device_types", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "device_types", ["name"], name: "index_device_types_on_name", unique: true

  create_table "devices", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "ipaddress"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "device_model_id"
    t.integer  "environment_id"
    t.integer  "service_level_id"
    t.integer  "support_level_id"
    t.integer  "organisation_id"
    t.string   "asset_tag"
    t.integer  "network_interface_id"
    t.string   "serial_number"
  end

  add_index "devices", ["device_model_id"], name: "index_devices_on_device_model_id"
  add_index "devices", ["environment_id"], name: "index_devices_on_environment_id"
  add_index "devices", ["name"], name: "index_devices_on_name"
  add_index "devices", ["network_interface_id"], name: "index_devices_on_network_interface_id"
  add_index "devices", ["organisation_id"], name: "index_devices_on_organisation_id"
  add_index "devices", ["service_level_id"], name: "index_devices_on_service_level_id"
  add_index "devices", ["support_level_id"], name: "index_devices_on_support_level_id"

  create_table "environments", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "environments", ["name"], name: "index_environments_on_name", unique: true

  create_table "license_types", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "organisation_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "license_types", ["name"], name: "index_license_types_on_name", unique: true
  add_index "license_types", ["organisation_id"], name: "index_license_types_on_organisation_id"

  create_table "licenses", force: true do |t|
    t.string   "quantity"
    t.integer  "license_type_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "organisation_id"
  end

  add_index "licenses", ["license_type_id"], name: "index_licenses_on_license_type_id"
  add_index "licenses", ["organisation_id"], name: "index_licenses_on_organisation_id"

  create_table "manufacturers", force: true do |t|
    t.string   "name"
    t.text     "description", limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "website"
  end

  add_index "manufacturers", ["name"], name: "index_manufacturers_on_name", unique: true

  create_table "network_interfaces", force: true do |t|
    t.string   "name"
    t.boolean  "active",         default: true
    t.boolean  "dhcp",           default: false
    t.string   "ipaddress"
    t.string   "netmask"
    t.string   "prefix"
    t.string   "broadcast"
    t.string   "gateway"
    t.string   "vlan"
    t.text     "description"
    t.integer  "device_id"
    t.integer  "network_use_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "network_interfaces", ["device_id"], name: "index_network_interfaces_on_device_id"
  add_index "network_interfaces", ["name"], name: "index_network_interfaces_on_name"
  add_index "network_interfaces", ["network_use_id"], name: "index_network_interfaces_on_network_use_id"

  create_table "network_uses", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "network_uses", ["name"], name: "index_network_uses_on_name"

  create_table "onemdl_settings", force: true do |t|
    t.string   "company_name"
    t.string   "company_tagline"
    t.string   "company_phone"
    t.string   "company_fax"
    t.string   "company_email"
    t.string   "company_address_1"
    t.string   "company_address_2"
    t.string   "company_city"
    t.string   "company_postcode"
    t.string   "company_country"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "time_zone"
  end

  add_index "onemdl_settings", ["company_name"], name: "index_onemdl_settings_on_company_name"

  create_table "organisations", force: true do |t|
    t.string   "name"
    t.string   "full_name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "support_level_id", limit: 255
    t.boolean  "active"
    t.string   "phone"
    t.string   "fax"
    t.string   "email"
    t.string   "address_1"
    t.string   "address_2"
    t.string   "city"
    t.string   "postcode"
    t.string   "country"
    t.string   "state"
    t.integer  "service_level_id"
    t.integer  "relationship_id"
  end

  add_index "organisations", ["name"], name: "index_organisations_on_name", unique: true

  create_table "relationships", force: true do |t|
    t.string   "name"
    t.text     "description", limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "relationships", ["name"], name: "index_relationships_on_name", unique: true

  create_table "service_levels", force: true do |t|
    t.string   "name"
    t.text     "description", limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "service_levels", ["name"], name: "index_service_levels_on_name", unique: true

  create_table "support_levels", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "hours"
    t.string   "days"
    t.string   "exclusions"
  end

  add_index "support_levels", ["name"], name: "index_support_levels_on_name", unique: true

  create_table "users", force: true do |t|
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.string   "avatar_url"
    t.boolean  "admin"
  end

end
