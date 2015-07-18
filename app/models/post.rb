class Post < ActiveRecord::Base
  has_many :comments
  belongs_to :user
  validates_presence_of :body
  acts_as_taggable
end
