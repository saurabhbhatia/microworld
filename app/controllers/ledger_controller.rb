class LedgerController < ApplicationController
#before_filter :login_require #, :except => [:index]
 def index
      @users = User.all
      @ledgers= Ledger.all
      @groups=Group.all
      respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @ledgers }
  end# end of loop
     end#end of index

 def show_user
      @group=Group.find(params[:group][:group_id])
      @users = @group.users
      @create_date = params[:create_date]
      respond_to do |format|
      format.html # new.html.erb
      end#end of method
    end

def show
      @users = User.all
      @ledgers= Ledger.all
      @groups=Group.all
respond_to do|format|
format.html
end
end

def new
   @ledger=Ledger.new
   respond_to do |format|
   format.html
  end
end

def show_ledger
 @ledgers=Ledger.find_all_by_date_ledger(params[:date])
respond_to do |format|
format.html
end
end


def create
         @group=Group.find(params[:group_id])
         @ledger=Ledger.all
   @users =@group.users
   @users.each do |user|
      if params["#{user.id}"][:amount]
                 #@ledger = Ledger.new(params[:ledger])
            @ledger= Ledger.new
      @ledger.user_id = params["#{user.id}"][:user_id].to_i
                  @user = User.find(user)
                  @user.totalamount = @user.totalamount + params["#{user.id}"][:amount].to_i
      @ledger.amount = params["#{user.id}"][:amount].to_i
      @ledger.name = params["#{user.id}"][:name].to_s
      @ledger.user_name = params["#{user.id}"][:user_name].to_s
      @ledger.group_id = params["#{@user.group_id}"][:group_id].to_i
      @ledger.date_ledger = params["#{user.id}"][:date_ledger].to_s
                  #@ledger.date   = params["#{user.id}"]  [:date].to_i
                  #user.amount = params["#{user.id}"][:amount].to_i
      @user.save
      @ledger.save
   end
   end
        flash[:notice] = 'Amount was successfully Added.'
        redirect_to :controller=>"ledger",:action=>"index",:id=>@ledger
    end
    end
