class StoreController < ApplicationController
  def index
    @products = Product.order(:title)
    @current_time = Time.now.strftime("%H:%M:%S")
  end
end
