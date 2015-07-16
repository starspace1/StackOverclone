class Answer < Post
  belongs_to :question, class_name: 'Post' 
  # Class name is post because the question id value is found
  # in the posts table (vs the non-existent questions table)
end