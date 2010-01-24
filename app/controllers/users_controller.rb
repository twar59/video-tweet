class UsersController < ApplicationController
  before_filter :require_owner, :only => [:edit, :update, :show]
  before_filter :require_admin, :only => [:index, :new, :create, :destroy]

  def index
    @users = User.all
  end
  
  def show
  end
  
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(params[:user])
    if @user.save
      flash[:notice] = "Successfully created user."
      if logged_in? && current_user.is_admin
        redirect_to @user 
      else
        redirect_to root_url
      end
    else
      render :action => 'new'
    end
  end
  
  def edit
  end
  
  def update
    if @user.update_attributes(params[:user])
      flash[:notice] = "Successfully updated user."
      redirect_to @user
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @user.destroy
    flash[:notice] = "Successfully destroyed user."
    redirect_to users_url
  end

  protected

  def require_owner
    @user = User.find(params[:id])
    access_denied unless @user.id == current_user.id
  end
end
