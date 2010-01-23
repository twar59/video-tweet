class Video < ActiveRecord::Base
  attr_accessible :user_id, :video_id, :description, :title
  belongs_to :user

  # return a group of featured videos
  named_scope :featured, lambda {|n| { :order => "created_at desc", :limit => n }}  
end
