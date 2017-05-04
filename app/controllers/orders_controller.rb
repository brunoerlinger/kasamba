class OrdersController < ApplicationController
  def show
    @order_itens = current_order.order_itens
    @products = Product.order(view: :desc).first(3)
  end

end
