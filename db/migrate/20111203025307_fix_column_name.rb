class FixColumnName < ActiveRecord::Migration
  def change
    rename_column :Warehouses, :type, :warehousetype
  end
end
