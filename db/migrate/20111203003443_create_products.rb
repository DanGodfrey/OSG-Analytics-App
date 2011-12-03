class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.integer :product_key
      t.integer :sku
      t.string :description
      t.string :brand
      t.string :subcategory
      t.string :category
      t.string :department
      t.string :package_type

      t.timestamps
    end
  end
end
