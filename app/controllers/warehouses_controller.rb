class WarehousesController < ActionController::Base
  def show
    @warehouse = Warehouse.find(params[:id])
  end
end
