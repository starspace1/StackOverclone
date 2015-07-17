class QuestionsController < ApplicationController

  def index
  	@questions = Question.all
  end
  def show
    @questions = ["Question1", "Question2", "Question3"]
    @answers = ["Answer1", "Answer2", "Answer3"]
    @comments = ["Comment1", "Comment2", "Comment3"]
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
