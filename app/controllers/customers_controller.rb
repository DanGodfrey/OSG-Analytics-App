class CustomersController < ApplicationController
  layout 'application', :except => [:show]
  def show
    @customer = Customer.find(params[:id])
  end
  def report
    @orders = ShipFact.find :all
  end
end
