class QuestionsController < ApplicationController
  impressionist actions: [:show]

  def index
  	@questions = Question.all
  end
  def show
   @question = Question.find(params[:id])
   impressionist(@question)
  end
  
  def new
    @question = Question.new
  end	

  def create
    @question = Question.create(question_params)
    redirect_to root_path
  end	
  
  private

  def question_params
    params.require(:question).permit(:title, :body, :tags)
  end

end
