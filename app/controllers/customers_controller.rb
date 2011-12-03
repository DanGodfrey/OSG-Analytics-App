class CustomersController < ActionController::Base
  def show
    @customer = Customer.find(params[:id])
  end
end
