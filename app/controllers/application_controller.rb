# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  include Authentication
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details

  def access_denied
    render :text => "Access denied."
  end

  def require_admin
    login_required
    access_denied unless current_user.is_admin
  end
end
