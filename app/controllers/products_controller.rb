class ProductsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home ]

  def home
    @categories = Category.all
  end

  def index
    @categories = Category.all
    @category = Category.find(params[:category])
    @products = Product.where(category_id: @category.subtree_ids)
    @order_iten = current_order.order_itens.new
    gmaps
  end

  def show
    @product = Product.find(params[:id])
    @question = Question.new
    @questions = @product.questions
    @order_iten = current_order.order_itens.new
    if @product.view.blank?
      @product.view = 1
    else
      @product.view = @product.view += 1
    end
    @product.save
    gmaps
  end

  def gmaps
      @hash = Gmaps4rails.build_markers(@products) do |product, marker|
      marker.lat product.latitude
      marker.lng product.longitude
      marker.infowindow render_to_string(partial: "/products/map_box_index", locals: { my_product: product })
    end
  end
end
