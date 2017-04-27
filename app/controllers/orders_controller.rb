class OrdersController < ApplicationController
  def show
    @order_itens = current_order.order_itens
  end
end
