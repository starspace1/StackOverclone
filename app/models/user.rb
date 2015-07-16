class User < ActiveRecord::Base
  has_secure_password
  has_many :posts
  has_many :comments
  validates_presence_of :username, :password_digest, :location, :knowledge
  validates_uniqueness_of :username
end
