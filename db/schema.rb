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

ActiveRecord::Schema.define(:version => 20130207183324) do

  create_table "agents", :force => true do |t|
    t.string   "name"
    t.string   "phone"
    t.string   "email"
    t.string   "role"
    t.integer  "distributor_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  add_index "agents", ["distributor_id"], :name => "index_agents_on_distributor_id"

  create_table "assemblies", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.string   "ncm"
    t.string   "place"
    t.integer  "amount"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "assembly_items", :force => true do |t|
    t.integer  "assembly_id"
    t.integer  "assemblable_id"
    t.string   "assemblable_type"
    t.string   "position"
    t.integer  "amount"
    t.text     "comments"
    t.boolean  "bottom"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  add_index "assembly_items", ["assembly_id"], :name => "index_assembly_items_on_assembly_id"

  create_table "distributors", :force => true do |t|
    t.string   "name"
    t.string   "phone"
    t.string   "email"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "distributors_vendors", :id => false, :force => true do |t|
    t.integer "distributor_id"
    t.integer "vendor_id"
  end

  create_table "parts", :force => true do |t|
    t.integer  "amount"
    t.text     "description"
    t.float    "last_price"
    t.integer  "last_volume"
    t.string   "ncm"
    t.string   "place"
    t.string   "title"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "vendor_parts", :force => true do |t|
    t.integer  "vendor_id"
    t.integer  "part_id"
    t.string   "part_number"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "vendor_parts", ["part_id"], :name => "index_vendor_parts_on_part_id"
  add_index "vendor_parts", ["vendor_id"], :name => "index_vendor_parts_on_vendor_id"

  create_table "vendors", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
