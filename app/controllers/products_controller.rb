class ProductsController < ApplicationController
  layout 'application', :except => [:summary]
  def summary
    @product = Product.find(params[:id])
  end
  def browse
    @products = Product.find :all
  end
  def show
    @product = Product.find(params[:id])
  end
end
