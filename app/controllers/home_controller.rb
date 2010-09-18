class HomeController < ApplicationController
#before_filter :authorize, :except => [:index, :login]

def index
  if !(session[:user])
     redirect_to :controller => "sessions", :action => "new"
  end
end
end
