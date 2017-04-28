class OrdersController < ApplicationController
  def show
    @order_itens = current_order.order_itens
    # @category = Category.find(params[:category])
  end

end
