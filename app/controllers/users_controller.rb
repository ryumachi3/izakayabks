class UsersController < ApplicationController
    def index

        @users = User.all

        respond_to do |format|
            format.html # index.html.erb
        end
    end
	def new
        @user = User.new

		@colors = Color.find_by_sql("SELECT color FROM colors a where not exists (SELECT 1 FROM users b where b.color <=> a.color)").map(&:color).join(',')
        respond_to do |format|
            format.html #new.html.erb
        end
    end
	def create
        @user = User.new(params[:user])

        respond_to do |format|
            if @user.save
                format.html { redirect_to :action => "index" }
            else
                @colors = Color.find_by_sql("SELECT color FROM colors a where not exists (SELECT 1 FROM users b where b.color <=> a.color)").map(&:color).join(',')
	        format.html { render :action => "new" }
            end
        end
    end
        def edit
                @user = User.find(params[:id])
        	@colors = Color.find_by_sql("SELECT color FROM colors a where not exists (SELECT 1 FROM users b where b.color <=> a.color)").map(&:color).join(',')
	end
        def update
                @user = User.find(params[:id])

                respond_to do |format|
                        if @user.update_attributes(params[:user])
                            format.html { redirect_to "/users" }
                        else
                            @colors = Color.find_by_sql("SELECT color FROM colors a where not exists (SELECT 1 FROM users b where b.color <=> a.color)").map(&:color).join(',')     
		            format.html { render :action => "edit"  }
                        end
                end
        end
    def destroy
        @user = User.find(params[:id])
        @user.destroy
        respond_to do |format|
            format.html { redirect_to :action => "index" }    
        end
    end
end
