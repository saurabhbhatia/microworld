# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details
   
  include ::AuthenticatedSystem
 
#before_filter :login_require ,#:except => [:index, :login]
helper_method :current_user, :logged_in?, :admin?, :can_edit?

#def current_user
#@current_user ||= ((session[:userp_id] && Userp.find_by_id(session[:userp_id])) || 0)
#end
    def current_user
    session[:userp_id] ? @current_user ||= Userp.find(session[:userp_id]) : nil
  end
private
def logged_in?
  !!current_user
end

private 
def login_require
    if session[:userp]
      return true
    end
flash[:warning]='Please login to continue'
    session[:return_to]=request.request_uri
    redirect_to :controller => "sessions", :action => "new"
    return false 
  end
  # Scrub sensitive parameters from your log
   #filter_parameter_logging :password
end

