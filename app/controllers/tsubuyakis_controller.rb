class TsubuyakisController < ApplicationController
	def show
	end
	def new
		@osusume = Osusume.find(params[:osusume_id])
		@tsubuyaki = @osusume.tsubuyakis.new
		@users = User.all 
		respond_to do |format|
			format.html #new.html.erb
		end
 	end
 	def create
		@osusume = Osusume.find(params[:osusume_id])
	
		@tsubuyaki = @osusume.tsubuyakis.new(params[:tsubuyaki])	
		respond_to do |format|
			if @tsubuyaki.save
				format.html { redirect_to sprintf("/osusumes?page=%s", session[:page]) }
			else
				@users = User.all
				format.html { render :action => "new" }
			end
		end
	end
	def destroy
		@tsubuyaki = Tsubuyaki.find(params[:id])
		@tsubuyaki.destroy
	
		respond_to do |format|
			format.html { redirect_to sprintf("/osusumes?page=%s", session[:page]) }
		end
	end
end
