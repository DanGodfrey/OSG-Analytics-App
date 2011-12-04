class ProvincesController <  ApplicationController
  def browse
    @orders = ShipFact.find(
       :all, 
       :joins => 'JOIN Customers ON Customers.customer_key = ship_facts.customer_key JOIN Products ON Products.product_key = ship_facts.product_key',
       :select => 'count(*) count, province', 
       :group => 'Customers.province')
  end
  def show
    @department_orders = ShipFact.find(
       :all, 
       :joins => 'JOIN Customers ON Customers.customer_key = ship_facts.customer_key JOIN Products ON Products.product_key = ship_facts.product_key',
       :select => 'count(*) count, department', 
       :group => 'Products.department', 
       :conditions => "Customers.province = \"" + params[:prov] + "\"" )
       
     @cat_orders = ShipFact.find(
        :all, 
        :joins => 'JOIN Customers ON Customers.customer_key = ship_facts.customer_key JOIN Products ON Products.product_key = ship_facts.product_key',
        :select => 'count(*) count, category', 
        :group => 'Products.category', 
        :conditions => "Customers.province = \"" + params[:prov] + "\"" )
        
      @subcat_orders = ShipFact.find(
         :all, 
         :joins => 'JOIN Customers ON Customers.customer_key = ship_facts.customer_key JOIN Products ON Products.product_key = ship_facts.product_key',
         :select => 'count(*) count, subcategory', 
         :group => 'Products.subcategory', 
         :conditions => "Customers.province = \"" + params[:prov] + "\"" )
       
       @orders = ShipFact.find(
          :all, 
          :joins => 'JOIN Customers ON Customers.customer_key = ship_facts.customer_key JOIN Products ON Products.product_key = ship_facts.product_key',
          :select => 'count(*) count, order_date_kay', 
          :group => 'ship_facts.order_date_kay', 
          :conditions => "Customers.province = \"" + params[:prov] + "\"" )
      
        @products = Product.find(
             :all, 
             :joins => 'JOIN Ship_Facts ON Products.product_key = ship_facts.product_key JOIN Customers ON Customers.customer_key = ship_facts.customer_key',
             :select => "Products.*, count(*) count, sum(ship_facts.sale_price) sum",
             :group => "sku",
             :conditions => "Customers.province =\"" + params[:prov] + "\"")
  end
end
