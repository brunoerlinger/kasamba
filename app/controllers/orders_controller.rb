class OrdersController < ApplicationController
  def show
    @order_itens = current_order.order_itens
    @products = Product.not_sold.order(view: :desc).first(3)
  end

  def close
    @order_itens = current_order.order_itens
  end

  def pay
    current_order.update! finished: true
    session[:order_id] = nil
    redirect_to root_path, notice: "Compra concluída com sucesso no Kasamba.online!"
  end

end
