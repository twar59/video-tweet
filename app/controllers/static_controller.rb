class StaticController < ApplicationController
  def index

    @user_session = UserSession.new

    # TODO: This does not handle zero videos
    
    if current_user
      @videos = current_user.videos
    else
      @videos = Video.featured APP_CONFIG[:pool_size]
    end
    @random_index = rand( [APP_CONFIG[:pool_size], @videos.size].min )
  end
end

