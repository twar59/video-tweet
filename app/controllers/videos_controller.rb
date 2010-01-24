class VideosController < ApplicationController
  before_filter :login_required
  before_filter :require_owner, :only => [:edit, :update, :destroy] # allow edit and destroy

  def index
    @videos = current_user.videos.all
  end
  
  def new
    @video = current_user.videos.new
  end
  
  def create
    @video = current_user.videos.build(params[:video])
    if @video.save
      flash[:notice] = "Successfully created video."
      redirect_to @video
    else
      render :action => 'new'
    end
  end
  
  def edit
  end
  
  def update
    if @video.update_attributes(params[:video])
      flash[:notice] = "Successfully updated video."
      redirect_to @video
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @video.destroy
    flash[:notice] = "Successfully destroyed video."
    redirect_to videos_url
  end

  protected 

  def require_owner
    @video = Video.find(params[:id])
    access_denied unless @video.user_id == current_user.id
  end
end
