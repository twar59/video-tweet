[User, Video].each(&:delete_all)    

admin = User.create(:name=>'Admin', :username=>'admin', :email=>'admin@foo.com', :bio=>'I am Admin', :password=>'pass123', :password_confirmation=>'pass123')
admin.is_admin = true # this can not be mass assigned
admin.save!

joe = User.new(:name=>'Joe', :username=>'joe', :email=>'joe@foo.com', :bio=>'I am Joe', :password=>'monkey', :password_confirmation=>'monkey', :is_admin=>false)
joe.videos.build :video_id=>"qseZkggobD4", :title=>"Learning to snowboard", :description=>"This is a fake movie ..."
joe.videos.build :video_id=>"R7vb6cuP6GE", :title=>"How to go fast", :description=>"This is a fake movie ..."
joe.videos.build :video_id=>"44KenqMrqI8", :title=>"How to carve", :description=>"This is a fake movie ..."
joe.videos.build :video_id=>"asdf4asdf", :title=>"fake movie4", :description=>"This is a fake movie ..."
joe.save!
