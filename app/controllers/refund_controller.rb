class RefundController < ApplicationController

before_filter :login_required #, :except => [:index, :login]

 def index
      @users = User.all
      @refunds= Refund.all
      @groups=Group.all
      respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @refund}
	end# end of loop
     end#end of index
 
 def show_user

      @refund=Refund.new
      @group=Group.find(params[:group][:group_id])
      @users = @group.users
      respond_to do |format|
      format.html
      end
    end

 def new
      @refund=Refund.new
      @groups=Group.all
      @user=User.all  
      respond_to do |format|
      format.html 
      end
    end

def create
         @group=Group.find(params[:group_id])
	 @users =@group.users
	 @users.each do |user|
	   if params["#{user.id}"][:amount]
	      @refund= Refund.new
		  @refund.user_id = params["#{user.id}"][:user_id].to_i
                  @user = User.find(user)
                  @user.totalamount = @user.totalamount - params["#{user.id}"][:amount].to_i
 		  @refund.amount = params["#{user.id}"][:amount].to_i 
		  @refund.name = params["#{user.id}"][:name].to_s
		  @refund.user_name = params["#{user.id}"][:user_name].to_s
		  @refund.reason = params["#{user.id}"][:reason].to_s
                  @user.save
		  @refund.save
	 end
	 end
        flash[:notice] = 'Amount was successfully Added.'
        redirect_to :controller=>"refund",:action=>"index",:id=>@refund
end
end
