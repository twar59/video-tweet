class User < ActiveRecord::Base
  attr_accessible :username, :email, :twitter_id, :name, :bio, :password, :password_confirmation
  acts_as_authentic
  has_many :videos
end
