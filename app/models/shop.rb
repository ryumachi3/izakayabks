# coding: utf-8

class Shop < ActiveRecord::Base
  attr_accessible :kaisya_flag, :kojin_hyouka, :MEMO, :Osusume_person, :shopname, :moyori_station_id, :url, :yoka_count, :yosa_count, :heikin_hyouka, :use_rirekis_attributes, :genres, :genre_ids, :shops_tags_attribute
  has_many :use_rirekis,:dependent => :destroy,:validate => true
  has_many :kuchikomis,:dependent => :destroy,:validate => true
  has_many :genres_shops,:dependent => :delete_all
  has_many :genres,:through => :genres_shops
  has_many :shops_tags,:dependent => :delete_all
  accepts_nested_attributes_for :shops_tags
  belongs_to :moyori_station
  accepts_nested_attributes_for :use_rirekis
  validates :shopname,
	  :presence => true,
	  :length => {:maximum => 20}
  validates :url,
	  :presence => true,
	  :length => {:maximum => 255}
  validates :genre_ids,
	  :presence => true
end
