class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.integer :transaction_key
      t.string :transaction_description
      t.string :transaction_type
      t.string :carrier_name
      t.string :carrier_address
      t.string :carrier_city
      t.string :carrier_province

      t.timestamps
    end
  end
end
