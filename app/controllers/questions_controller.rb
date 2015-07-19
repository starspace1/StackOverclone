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

  def upvote
    @question = Question.find(params[:id])
    @question.upvote_by current_user
  end

  def downvote
    @question = Question.find(params[:id])
    @question.downvote_by current_user
  end

  private

  def question_params
    params.require(:question).permit(:title, :body, :tags, :question_id, :tag_list)
  end

end
