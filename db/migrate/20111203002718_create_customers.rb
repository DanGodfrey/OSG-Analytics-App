class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.integer :customer_key
      t.string :fullname
      t.string :address
      t.string :city
      t.string :province
      t.string :postalcode
      t.string :region
      t.string :gender
      t.string :dob

      t.timestamps
    end
  end
end
