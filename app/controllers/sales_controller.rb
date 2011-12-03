class SalesController < ApplicationController
  layout 'application', :except => [:load]
  def index
  end
  def browse
    @facts = ShipFact.find :all, :limit => 50, :order => "id asc"
  end
  def load
    @facts = ShipFact.find :all, :limit => 50, :order => "id asc", :conditions => "id > " + params[:id]
  end
end
