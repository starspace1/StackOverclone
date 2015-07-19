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
    if session[:user_id].nil?
      flash[:danger] = "You must be logged in to post a new question."
      redirect_to login_path  
    end
    @question = Question.new
  end

  def create
    # @question = Question.create(question_params)
    @question = current_user.questions.create(question_params)
    if @question.valid?
      redirect_to root_path
    else
      render 'new'
    end
  end

  def unanswered
    @questions = Question.unanswered
    render :index
  end

  def recent
    @questions = Question.order(updated_at: :desc)
    render :index
  end

  private

  def question_params
    params.require(:question).permit(:title, :body, :tags, :question_id, :tag_list)
  end

end
