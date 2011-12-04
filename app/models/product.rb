class Product < ActiveRecord::Base
  has_many :ShipFacts, :foreign_key => 'product_key', :primary_key => 'product_key' 
  
  def getDailySales
    orders = ShipFact.find(
       :all, 
       :select => 'count(*) count, order_date_kay', 
       :group => 'order_date_kay', 
       :conditions => "product_key =" + product_key.to_s)
    return orders
  end
  def getProvincialSales
    orders = ShipFact.find(
       :all, 
       :joins => 'JOIN Customers ON Customers.customer_key = ship_facts.customer_key',
       :select => 'count(*) count, province', 
       :group => 'Customers.province', 
       :conditions => "product_key =" + product_key.to_s)
    return orders
  end
  def getCitySales
    orders = ShipFact.find(
       :all, 
       :joins => 'JOIN Customers ON Customers.customer_key = ship_facts.customer_key',
       :select => 'count(*) count, city', 
       :group => 'Customers.city', 
       :conditions => "product_key =" + product_key.to_s)
    return orders
  end
  def getRegionSales
    orders = ShipFact.find(
       :all, 
       :joins => 'JOIN Customers ON Customers.customer_key = ship_facts.customer_key',
       :select => 'count(*) count, region', 
       :group => 'Customers.region', 
       :conditions => "product_key =" + product_key.to_s)
    return orders
  end
end
