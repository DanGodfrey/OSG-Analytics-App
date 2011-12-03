class ShipFact < ActiveRecord::Base
  has_one :K_Date, :foreign_key => 'order_date_kay', :primary_key => 'date_key'
  has_one :K_Date, :foreign_key => 'ship_date_key', :primary_key => 'date_key'
  has_one :K_Date, :foreign_key => 'expected_ship_date_key', :primary_key => 'date_key'
  has_one :K_Date, :foreign_key => 'expected_arrive_date_key', :primary_key => 'date_key'
  has_one :K_Date, :foreign_key => 'actual_arrive_date_key', :primary_key => 'date_key'
  has_one :Product, :foreign_key => 'product_key', :primary_key => 'product_key'
  has_one :Customer, :foreign_key => 'customer_key', :primary_key => 'customer_key'
  has_one :Warehouse, :foreign_key => 'warehouse_key', :primary_key => 'warehouse_key'
  has_one :Transaction, :foreign_key => 'transaction_key', :primary_key => 'transaction_key'
  has_one :Shipment, :foreign_key => 'shipping_key', :primary_key => 'shipping_key'
end
