class Mine::AnswersController < ApplicationController

  def index
    @questions = current_user.questions
  end

   def update
    @question = Question.find(params[:id])
    if @question.update(question_params)
      redirect_to mine_product_path(@question.product)
    else
      render :index
    end
  end

  def delete
  end

  private

  def question_params
    # *Strong params*: You need to *whitelist* what can be updated by the user
    # Never trust user data!
    params.require(:question).permit(:answer, :id)
  end

end
