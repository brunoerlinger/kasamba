class OrderItensController < ApplicationController
  def create
    @order = current_order
    @order_iten = @order.order_itens.new(order_iten_params)
    @order.save
    session[:order_id] = @order.id
  end

  # def edit
  # end

  def update
    @order = current_order
    @order_iten = @order.order_itens.find(params[:id])
    @order_iten.update_attributes(order_iten_params)
    @order_itens = @order.order_itens
  end

  def destroy
    @order = current_order
    @order_iten = @order.order_itens.find(params[:id])
    @order_iten.destroy
    @order_itens = @order.order_itens
  end

private
  def order_iten_params
    params.require(:order_iten).permit(:order_id, :product_id)
  end
end
