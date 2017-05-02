class Mine::ProductsController < ApplicationController

  def index
    @my_products = current_user.products
    @hash = Gmaps4rails.build_markers(@my_products) do |product, marker|
      marker.lat product.latitude
      marker.lng product.longitude
      marker.infowindow render_to_string(partial: "/mine/products/map_box_index", locals: { my_product: product })
    end
  end

  def show
    @my_product = Product.find(params[:id])
    @questions = @my_product.questions
    @hash = Gmaps4rails.build_markers(@my_product) do |product, marker|
      marker.lat product.latitude
      marker.lng product.longitude
      marker.infowindow render_to_string(partial: "/mine/products/map_box", locals: { my_product: product })
    end
  end

  def new
    @my_product = Product.new
    @my_product.address = current_user.address
    @my_product.view = 0
    @categories = Category.all
  end

  def create
    @my_product = current_user.products.new(my_product_params)
    if @my_product.save
      flash[:notice] = "#{@my_product.description} adicionado"
      redirect_to mine_product_path(@my_product)
    else
      render :new
    end
  end

  def edit
    @my_product = Product.find(params[:id])
    @categories = Category.all
  end

  def update
    @my_product = Product.find(params[:id])
    if @my_product.update(my_product_params)
      redirect_to mine_product_path(@my_product)
    else
      @categories = Category.all
      render :edit
    end
  end

  def destroy
    @my_product = Product.find(params[:id])
    @my_product.destroy
    redirect_to mine_products_path
  end

  def gmaps4rails_infowindow
      # add here whatever html content you desire, it will be displayed when users clicks on the marker
  end

private
  def my_product_params
      # *Strong params*: You need to *whitelist* what can be updated by the user
      # Never trust user data!
      params.require(:product).permit(:name, :description, :address, :state, :city, :zip_code, :price, :category_id, photos: [])
  end
end
