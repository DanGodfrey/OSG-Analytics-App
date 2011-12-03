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

ActiveRecord::Schema.define(:version => 20111203025307) do

  create_table "Warehouses", :force => true do |t|
    t.integer  "warehouse_key"
    t.string   "name"
    t.string   "warehousetype"
    t.string   "address"
    t.string   "city"
    t.string   "province"
    t.string   "postalcode"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "customers", :force => true do |t|
    t.integer  "customer_key"
    t.string   "fullname"
    t.string   "address"
    t.string   "city"
    t.string   "province"
    t.string   "postalcode"
    t.string   "region"
    t.string   "gender"
    t.string   "dob"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "k_dates", :force => true do |t|
    t.integer  "date_key"
    t.string   "fulldate"
    t.string   "date_name"
    t.integer  "day_of_week"
    t.string   "day_name_of_week"
    t.integer  "day_of_month"
    t.string   "weekday_weekend"
    t.integer  "week_of_year"
    t.string   "month_name"
    t.integer  "month_of_year"
    t.string   "is_last_day_of_month"
    t.integer  "calendar_quarter"
    t.integer  "calendar_year"
    t.string   "calendar_year_month"
    t.string   "calendar_year_quarter"
    t.integer  "financial_month_of_year"
    t.integer  "financial_quarter"
    t.integer  "fiscal_year"
    t.string   "fiscal_year_month"
    t.string   "fiscal_year_quarter"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "products", :force => true do |t|
    t.integer  "product_key"
    t.integer  "sku"
    t.string   "description"
    t.string   "brand"
    t.string   "subcategory"
    t.string   "category"
    t.string   "department"
    t.string   "package_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ship_facts", :force => true do |t|
    t.integer  "order_date_kay"
    t.integer  "ship_date_key"
    t.integer  "expected_ship_date_key"
    t.integer  "expected_arrive_date_key"
    t.integer  "actual_arrive_date_key"
    t.integer  "product_key"
    t.integer  "customer_key"
    t.integer  "warehouse_key"
    t.integer  "transaction_key"
    t.integer  "shipping_key"
    t.float    "sale_price"
    t.float    "cost_price"
    t.float    "tax_amount"
    t.integer  "tax_percent"
    t.string   "free_shipping"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "shipments", :force => true do |t|
    t.integer  "shipping_key"
    t.integer  "invoice_number"
    t.float    "invoice_total"
    t.float    "shipping_fees"
    t.integer  "on_time"
    t.integer  "damage_free"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "transactions", :force => true do |t|
    t.integer  "transaction_key"
    t.string   "transaction_description"
    t.string   "transaction_type"
    t.string   "carrier_name"
    t.string   "carrier_address"
    t.string   "carrier_city"
    t.string   "carrier_province"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
