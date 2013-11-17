# coding: utf-8
class KaisyaController < ApplicationController
    def index

		#ページNOをセッションに登録
		session[:page] = params[:page]

		@page = params[:page].to_i 
		@page_one = @page + 1
		@page_num = 10

		#@shops = Shop.find(:all, :include => [:genres])
		@shops_cnt = Shop.where("kaisya_flag = 1").count
		@shops = Shop.where("kaisya_flag = 1").order("id DESC")		
		.offset(@page * @page_num).limit(@page_num)
	
		@link_num = 0
		if @shops_cnt > 0 then
			@link_num = @shops_cnt.quo(10)
		end

		@addshop = Shop.new	
		respond_to do |format|
			format.html # index.html.erb
		end
	end
	def show
	end
	def new
		@shop = Shop.new
		@shop.use_rirekis.build

		url_str = params[:shop_url]
		if "URLを入力" != url_str then
			@shop.url = url_str
		end
		#@shop.build_use_rireki
		#@use_rirekis = Array.new(1) { use_rireki.new }
		@moyori_stations = MoyoriStation.all
		@genres = Genre.all
		respond_to do |format|
			format.html #new.html.erb
		end
	end
	def create
		@shop = Shop.new(params[:shop])
		@shop.kaisya_flag = 1
		tagsArr = params[:taguzuke].gsub(/　/," ").split(nil)		
		tagsArr.each do |tag|
    		@shop.shops_tags.build(:tag => tag)
		end

		respond_to do |format|
			if @shop.save
				format.html { redirect_to :action => "index" }
			else
				@moyori_stations = MoyoriStation.all
				@genres = Genre.all
				format.html { render :action => "new" }
			end
		end
	end
	def edit
		@shop = Shop.find(params[:id])
		@moyori_stations = MoyoriStation.all
		@genres = Genre.all
		@tag_text = ''
		@shop.shops_tags.each do |shops_tag|
			@tag_text += shops_tag.tag 
			@tag_text += ' '
		end
	end
	def update
		@shop = Shop.find(params[:id])

#		@shop.shops_tags.where(shop_id: :id).delete_all
		@shop.shops_tags.where(:shop_id => params[:id]).delete_all
		tagsArr = params[:taguzuke].gsub(/　/," ").split(nil)		
		tagsArr.each do |tag|
    		@shop.shops_tags.build(:tag => tag)
		end

		respond_to do |format|
			if @shop.update_attributes(params[:shop])
			    format.html { redirect_to sprintf("/kaisya/index?page=%s", session[:page]) }
			else
				@moyori_stations = MoyoriStation.all
				format.html { render :action => "edit"  }
			end
		end
	end
	def destroy
		@shop = Shop.find(params[:id])
		@shop.destroy
		respond_to do |format|
			format.html { redirect_to sprintf("/kaisya/index?page=%s", session[:page]) }
		end
	end
	def yokaup
		@shop = Shop.find(params[:id])
		@shop.yoka_count += 1
		@shop.update_attribute(:yoka_count, @shop.yoka_count )
		respond_to do |format|
			format.html { redirect_to sprintf("/kaisya/index?page=%s", session[:page]) }
		end
	end
	def tagWork(pTagText)
	#タグ付け処理
	arrTag = pTagText.split(nil)
	arrTag.each do |tag|
	
	end
	end
end
