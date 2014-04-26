class UsersController < ApplicationController
    def index

        @users = User.all

        respond_to do |format|
            format.html # index.html.erb
        end
    end
	def new
        @user = User.new

		@colors = Color.find_by_sql("SELECT color FROM colors EXCEPT SELECT color FROM users").map(&:color).join(',')
        respond_to do |format|
            format.html #new.html.erb
        end
    end
	def create
        @user = User.new(params[:user])

        respond_to do |format|
            if @user.save
				if request.referer
    			  redirect_to( :back )
			    elsif @prev_page
			      redirect_to( @prev_page )
 		 	    else
   				   redirect_to("/")
  			    end
            else
				@colors = Color.find_by_sql("SELECT color FROM colors EXEPT SELECT color FROM users")               
                format.html { render :action => "new" }
            end
        end
    end
    def edit
    end
    def update
    end
    def destroy
        @user = User.find(params[:id])
        @user.destroy
        respond_to do |format|
            format.html { redirect_to sprintf("/osusume/new") }
        end
    end
end
