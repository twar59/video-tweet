[User, Video].each(&:delete_all)    

admin = User.create(:name=>'Admin', :username=>'admin', :email=>'admin@foo.com', :bio=>'I am Admin', :password=>'pass123', :password_confirmation=>'pass123')
admin.is_admin = true # this can not be mass assigned
admin.save!

joe = User.new(:name=>'Joe', :username=>'joe', :email=>'joe@foo.com', :twitter_id => 'skicandy', :bio=>'I am Joe', :password=>'monkey', :password_confirmation=>'monkey', :is_admin=>false)
joe.videos.build :video_id=>"qseZkggobD4", :title=>"Learning to snowboard", :description=>"This is a fake movie ..."
joe.videos.build :video_id=>"R7vb6cuP6GE", :title=>"How to go fast", :description=>"This is a fake movie ..."
joe.videos.build :video_id=>"44KenqMrqI8", :title=>"How to carve", :description=>"This is a fake movie ..."
joe.videos.build :video_id=>"r4f04CtpiNE", :title=>"crash", :description=>"This is a fake movie ..."
joe.save!

mary = User.new(:name=>'Mary', :username=>'mary', :email=>'mary@foo.com', :twitter_id => 'mishkathehusky', :bio=>'I am Mary', :password=>'monkey', :password_confirmation=>'monkey', :is_admin=>false)
mary.videos.build :video_id=>"qXo3NFqkaRM", :title=>"talking dog", :description=>"This is a fake movie ..."
mary.videos.build :video_id=>"RCq7sgSCPX8", :title=>"singing dog", :description=>"This is a fake movie ..."
mary.save!
