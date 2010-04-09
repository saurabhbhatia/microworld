class UserpController < ApplicationController
#before_filter :login_require #,:except => [:index, :login]
def authenticate
		@userp = Userp.new(params[:userp])
       		valid_userp = Userp.find(:first,:conditions => ["username = ? and password = ?",@userp.username, @userp.password])       
		if valid_userp
       			session[:user_id]=valid_userp.username
     			redirect_to :controller=>"home",:action=>"index"
		else
			flash[:notice] = "Invalid User/Password"
			redirect_to :action=> 'login'
		end
		end 

 



 def private
  if !session[:user_id]
  redirect_to :action=> 'login'
  end
  end

  def logout
  if session[:user_id]
  reset_session
  redirect_to :action=> 'login'
end

  def new
   @userp = Userp.new(params[:userp])

   end
 end
 
def create
    @userp = Userp.new(params[:userp])
    respond_to do |format|
      if @userp.save
        flash[:notice] = "User With Login Name #{@userp.username} Created successfully!"
        format.html { redirect_to(:controller=>"userp",:action=>"login",:id=>@userp) }
        format.xml  { render :xml => @userp, :status => :created, :location => @userp }
      else	
        format.html { render :action => "new" }
        format.xml  { render :xml => @userp.errors, :status => :unprocessable_entity }
      end
    end
  end

def show
    @userp = Userp.find(params[:id])
    respond_to do |format|
    format.html # show.html.erb
    format.xml  { render :xml => @userp }
    end
  end
end













