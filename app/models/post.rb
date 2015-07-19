class Post < ActiveRecord::Base
  acts_as_votable
  has_many :comments
  belongs_to :user
  validates_presence_of :body
  acts_as_taggable
end

