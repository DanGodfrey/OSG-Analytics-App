class CreateWarehouses < ActiveRecord::Migration
  def change
    create_table :warehouses do |t|
      t.integer :warehouse_key
      t.string :name
      t.string :type
      t.string :address
      t.string :city
      t.string :province
      t.string :postalcode

      t.timestamps
    end
  end
end
