class UseRirekisController < ApplicationController
	def show
	end
	def new
		@shop = Shop.find(params[:shop_id])
		@use_rireki = @shop.use_rirekis.new
		respond_to do |format|
			format.html #new.html.erb
		end
	end
	def create
        @shop = Shop.find(params[:shop_id])
		
		@use_rireki = @shop.use_rirekis.new(params[:use_rireki])
		respond_to do |format|
			if @use_rireki.save 
				fmt.html { redirect_to sprintf("/kaisya/index?page=%s", session[:page]) }
			else
				format.html { render :action => "new" }
			end
		end
	end
    def destroy
		@use_rireki = UseRireki.find(params[:id])
		@use_rireki.destroy
		respond_to do |format|
			format.html { redirect_to sprintf("/kaisya/index?page=%s", session[:page]) }
		end
	end

end
