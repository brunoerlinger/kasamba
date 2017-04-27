class ProductsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @categories = Category.children_of(1)
  end

  def index
    @category = Category.find(params[:category])
    @products = Product.where(category_id: @category.subtree_ids)
  end

  def show
    @product = Product.find(params[:id])
    @question = Question.new
    @questions = @product.questions
  end
end
