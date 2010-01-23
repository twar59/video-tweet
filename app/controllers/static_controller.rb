class StaticController < ApplicationController
  def index

    @videos = Video.featured APP_CONFIG[:pool_size]
    @current_video = @videos[rand( [APP_CONFIG[:pool_size], @videos.size].min )]
  end
end

