class CreateShipFacts < ActiveRecord::Migration
  def change
    create_table :ship_facts do |t|
      t.integer :order_date_kay
      t.integer :ship_date_key
      t.integer :expected_ship_date_key
      t.integer :expected_arrive_date_key
      t.integer :actual_arrive_date_key
      t.integer :product_key
      t.integer :customer_key
      t.integer :warehouse_key
      t.integer :transaction_key
      t.integer :shipping_key
      t.float :sale_price
      t.float :cost_price
      t.float :tax_amount
      t.integer :tax_percent
      t.string :free_shipping

      t.timestamps
    end
  end
end
