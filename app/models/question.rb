class Question < Post
  has_many :answers
  validates_presence_of :title
  is_impressionable

  def is_answered?
    num_answers > 0
  end

  def num_answers
    answers.count
  end

  def num_views
    impressionist_count
  end

end