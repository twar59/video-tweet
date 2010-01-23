[User, Video].each(&:delete_all)    

admin = User.create(:name=>'Admin', :username=>'admin', :email=>'admin@foo.com', :bio=>'I am Admin', :password=>'pass123', :password_confirmation=>'pass123', :is_admin=>true)
admin.save!

joe = User.new(:name=>'Joe', :username=>'joe', :email=>'joe@foo.com', :bio=>'I am Joe', :password=>'monkey', :password_confirmation=>'monkey', :is_admin=>false)
joe.videos.build :youtube_id=>"asdf1asdf", :title=>"fake movie1", :description=>"This is a fake movie ..."
joe.videos.build :youtube_id=>"asdf2asdf", :title=>"fake movie2", :description=>"This is a fake movie ..."
joe.videos.build :youtube_id=>"asdf3asdf", :title=>"fake movie3", :description=>"This is a fake movie ..."
joe.videos.build :youtube_id=>"asdf4asdf", :title=>"fake movie4", :description=>"This is a fake movie ..."
joe.save!
