class QuestionsController < ApplicationController
  def create
    @product = Product.find(params[:product_id])
    @question = Question.new(question_params)
    @question.user = current_user
    @question.product = @product
    if @question.save
      flash[:notice] = "Sua questão foi adicionada!"
      # @question.status = "New"
      redirect_to product_path(@product)
    else
      p @question.errors
      @questions = @product.questions
      render 'products/show'
    end
  end

  def destroy
    @question = question.find(params[:product_id])
  end

  private

  # def set_question
  #   @question = question.find(params[:product_id])
  # end

  def question_params
    # *Strong params*: You need to *whitelist* what can be updated by the user
    # Never trust user data!
    params.require(:question).permit(:question, :product_id, :user_id, photos: [])
  end
end
