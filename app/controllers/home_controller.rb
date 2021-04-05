class HomeController < ApplicationController

  def index
    @products = Product.products_available
end
