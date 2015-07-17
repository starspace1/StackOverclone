class Question < Post
  has_many :answers
  validates_presence_of :title
  is_impressionable
end