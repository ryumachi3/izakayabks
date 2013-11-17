class KuchikomisController < ApplicationController
	def show
	end
	def new
		@shop = Shop.find(params[:shop_id])
		@kuchikomi = @shop.kuchikomis.new
		respond_to do |format|
			format.html #new.html.erb
		end
 	end
 	def create
		@shop = Shop.find(params[:shop_id])
	
		@kuchikomi = @shop.kuchikomis.new(params[:kuchikomi])	
		respond_to do |format|
			if @kuchikomi.save
				@shop.update_attribute(:heikin_hyouka, hyoukaAveCalc(@shop))
				format.html { redirect_to sprintf("/kaisya/index?page=%s", session[:page]) }
			else
				format.html { render :action => "new" }
			end
		end
	end
	def destroy
		@kuchikomi = Kuchikomi.find(params[:id])
		@kuchikomi.destroy
	
		#平均評価の更新		
		@shop = Shop.find(params[:shop_id])
		@shop.update_attribute(:heikin_hyouka, hyoukaAveCalc(@shop))
		respond_to do |format|
			format.html { redirect_to sprintf("/kaisya/index?page=%s", session[:page]) }
		end
	end

	def hyoukaAveCalc(pShop)
        #平均評価を計算
		hyCnt = 0
		hySum = 0
		pShop.kuchikomis.each do |kuchikomi|
			if kuchikomi.hyouka != nil && kuchikomi.hyouka != 0
				hySum = hySum + kuchikomi.hyouka
			    hyCnt = hyCnt + 1
			end
		end

		if hyCnt != 0 && hySum != 0 	
			fHyouka = hySum.quo(hyCnt)
		end

		return fHyouka		
	end
end
