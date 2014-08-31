# coding: utf-8
class OsusumesController < ApplicationController
    def index

		#ページNOをセッションに登録
		session[:page] = params[:page]

		@page = params[:page].to_i 
		@page_one = @page + 1
		@page_num = 10

		@osusumes_cnt = Osusume.where('id >= ?',1).count
		@osusumes = Osusume.where('id >= ?',1).order("id DESC")		
		.offset(@page * @page_num).limit(@page_num)
	
		@link_num = 0
		if @osusumes_cnt > 0 then
			@link_num = @osusumes_cnt.quo(10)
		end

		@addosusume = Osusume.new	
		respond_to do |format|
			format.html # index.html.erb
		end
	end
	def show
	end
	def new
		@osusume = Osusume.new

		url_str = params[:osusume_url]
		if "URLを入力" != url_str then
			@osusume.url = url_str
		end
		@moyori_stations = MoyoriStation.all
		@users = User.all
		@genres = Genre.all
		respond_to do |format|
			format.html #new.html.erb
		end
	end
	def create
		@osusume = Osusume.new(params[:osusume])
		#評価がNULLの場合は0に置き換え
		if @osusume.kojin_hyouka == nil then
		    @osusume.kojin_hyouka = 0;
		end
	
		tagsArr = params[:taguzuke].gsub(/　/," ").split(nil)		
		tagsArr.each do |tag|
    		@osusume.osusumes_tags.build(:tag => tag)
		end
	
		respond_to do |format|
			if @osusume.save
				format.html { redirect_to :action => "index" }
			else
				@moyori_stations = MoyoriStation.all
				@users = User.all
				@genres = Genre.all
				format.html { render :action => "new" }
			end
		end
	end
	def edit
		@osusume = Osusume.find(params[:id])
		@moyori_stations = MoyoriStation.all
		@users = User.all
		@genres = Genre.all
		@tag_text = ''
		@osusume.osusumes_tags.each do |osusumes_tag|
			@tag_text += osusumes_tag.tag 
			@tag_text += ' '
		end
	end
	def update
		@osusume = Osusume.find(params[:id])

		@osusume.osusumes_tags.where(:osusume_id => params[:id]).delete_all
		tagsArr = params[:taguzuke].gsub(/　/," ").split(nil)		
		tagsArr.each do |tag|
    		@osusume.osusumes_tags.build(:tag => tag)
		end

		respond_to do |format|
			if @osusume.update_attributes(params[:osusume])
			    format.html { redirect_to sprintf("/osusumes?page=%s", session[:page]) }
			else
				@moyori_stations = MoyoriStation.all
				@users = User.all
				format.html { render :action => "edit"  }
			end
		end
	end
	def destroy
		@shop = Osusume.find(params[:id])
		@shop.destroy
		respond_to do |format|
			format.html { redirect_to sprintf("/osusumes?page=%s", session[:page]) }
		end
	end
	def yosaup
		@osusume = Osusume.find(params[:id])
		@osusume.yosa_count += 1
		@osusume.update_attribute(:yosa_count, @osusume.yosa_count )
		respond_to do |format|
			format.html { redirect_to sprintf("/osusumes?page=%s", session[:page]) }
		end
	end
	def tagWork(pTagText)
	#タグ付け処理
	arrTag = pTagText.split(nil)
	arrTag.each do |tag|
	
	end
	end
end
