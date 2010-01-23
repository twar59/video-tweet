class Video < ActiveRecord::Base
  attr_accessible :user_id, :video_id, :description, :title
  belongs_to :user
end
