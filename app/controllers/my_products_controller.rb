class MyProductsController < ApplicationController

  def index

    @my_products = current_user.products

  end

  def show
    @my_product = Product.find(params[:id])
  end

  def new
    @my_product = Product.new
  end

  def create
    @my_product = current_user.products.new(my_product_params)
    if @my_product.save
      flash[:notice] = "#{@my_product.description} adicionado"
      redirect_to my_product_path(@my_product)
    else
      render :new
    end
  end

  def edit
    @my_product = Product.find(params[:id])
  end

  def update
    @my_product = Product.find(params[:id])
    @my_product.update(my_product_params)
    redirect_to my_product_path(@my_product)
  end

  def destroy
    @my_product = Product.find(params[:id])
    @my_product.destroy
    redirect_to my_products_path
  end




private

  def my_product_params
      # *Strong params*: You need to *whitelist* what can be updated by the user
      # Never trust user data!
      params.require(:product).permit(:name, :description, :address, :price)
  end

end
