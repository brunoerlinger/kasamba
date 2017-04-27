class ProductsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @categories = Category.children_of(1)
  end

  def index
    @category = Category.find(params[:category])
    @products = Product.where(category_id: @category.subtree_ids)
    @hash = Gmaps4rails.build_markers(@products) do |product, marker|
      marker.lat product.latitude
      marker.lng product.longitude
      marker.infowindow render_to_string(partial: "/mine/products/map_box_index", locals: { my_product: product })
    end
  end

  def show
    lat1 = current_user.latitude
    lon1 = current_user.longitude
    @product = Product.find(params[:id])
    if @product.view.blank?
      @product.view = 1
    else
      @product.view = @product.view += 1
    end
    @product.save
    lat2 = @product.latitude
    lon2 = @product.longitude
    @distance = Geocoder::Calculations.distance_between([lat1,lon1], [lat2,lon2])
  end
end
