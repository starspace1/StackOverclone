class QuestionsController < ApplicationController

  def index
  end
  def show
    @questions = ["Question1", "Question2", "Question3"]
    @answers = ["Answer1", "Answer2", "Answer3"]
    @comments = ["Comment1", "Comment2", "Comment3"]
  end
  
end
