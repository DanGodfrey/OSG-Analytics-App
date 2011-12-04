class DepartmentsController <  ApplicationController
  def browse
    @products = Product.find :all, :select => "count(*) count, department", :group => "department"
  end
  def show
    @prov_orders = ShipFact.find(
       :all, 
       :joins => 'JOIN Customers ON Customers.customer_key = ship_facts.customer_key JOIN Products ON Products.product_key = ship_facts.product_key',
       :select => 'count(*) count, province', 
       :group => 'Customers.province', 
       :conditions => "Products.department = \"" + params[:dep] + "\"" )
       
     @city_orders = ShipFact.find(
        :all, 
        :joins => 'JOIN Customers ON Customers.customer_key = ship_facts.customer_key JOIN Products ON Products.product_key = ship_facts.product_key',
        :select => 'count(*) count, city', 
        :group => 'Customers.city', 
        :conditions => "Products.department = \"" + params[:dep] + "\"" )
        
      @region_orders = ShipFact.find(
         :all, 
         :joins => 'JOIN Customers ON Customers.customer_key = ship_facts.customer_key JOIN Products ON Products.product_key = ship_facts.product_key',
         :select => 'count(*) count, region', 
         :group => 'Customers.region', 
         :conditions => "Products.department = \"" + params[:dep] + "\"" )
       
       @orders = ShipFact.find(
          :all, 
          :joins => 'JOIN Products ON Products.product_key = ship_facts.product_key',
          :select => 'count(*) count, order_date_kay', 
          :group => 'order_date_kay', 
          :conditions => "Products.department = \"" + params[:dep] + "\"" )
      
        @products = Product.find(
           :all, 
           :conditions => "Products.department = \"" + params[:dep] + "\"" )
  end
end
