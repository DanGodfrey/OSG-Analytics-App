class ShipmentsController < ActionController::Base
  def show
    @shipment = Shipment.find(params[:id])
  end
end
