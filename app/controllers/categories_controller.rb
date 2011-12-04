class CategoriesController <  ApplicationController
  def browse
    @products = Product.find :all, :select => "count(*) count, category", :group => "category"
  end
  def show
    @prov_orders = ShipFact.find(
       :all, 
       :joins => 'JOIN Customers ON Customers.customer_key = ship_facts.customer_key JOIN Products ON Products.product_key = ship_facts.product_key',
       :select => 'count(*) count, province', 
       :group => 'Customers.province', 
       :conditions => "Products.category = \"" + params[:cat] + "\"" )
       
     @city_orders = ShipFact.find(
        :all, 
        :joins => 'JOIN Customers ON Customers.customer_key = ship_facts.customer_key JOIN Products ON Products.product_key = ship_facts.product_key',
        :select => 'count(*) count, city', 
        :group => 'Customers.city', 
        :conditions => "Products.category = \"" + params[:cat] + "\"" )
        
      @region_orders = ShipFact.find(
         :all, 
         :joins => 'JOIN Customers ON Customers.customer_key = ship_facts.customer_key JOIN Products ON Products.product_key = ship_facts.product_key',
         :select => 'count(*) count, region', 
         :group => 'Customers.region', 
         :conditions => "Products.category = \"" + params[:cat] + "\"" )
       
       @orders = ShipFact.find(
          :all, 
          :joins => 'JOIN Products ON Products.product_key = ship_facts.product_key',
          :select => 'count(*) count, order_date_kay', 
          :group => 'order_date_kay', 
          :conditions => "Products.category = \"" + params[:cat] + "\"" )
      
        @products = Product.find(
           :all, 
           :conditions => "Products.category = \"" + params[:cat] + "\"" )
  end
end
