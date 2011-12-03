class CreateShipments < ActiveRecord::Migration
  def change
    create_table :shipments do |t|
      t.integer :shipping_key
      t.integer :invoice_number
      t.float :invoice_total
      t.float :shipping_fees
      t.integer :on_time
      t.integer :damage_free

      t.timestamps
    end
  end
end
