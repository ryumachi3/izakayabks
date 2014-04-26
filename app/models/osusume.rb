class Osusume < ActiveRecord::Base
  attr_accessible :kojin_hyouka, :memo, :user_id, :shopname, :station_id, :url, :yosa_count,:moyori_station_id, :genre_ids, :osusumes_tags_attribute
  has_many :tsubuyakis,:dependent => :destroy,:validate =>true
  has_many :genres_osusumes,:dependent => :delete_all
  has_many :genres,:through => :genres_osusumes
  has_many :osusumes_tags,:dependent => :delete_all
  accepts_nested_attributes_for :osusumes_tags
  belongs_to :moyori_station
  belongs_to :user
  validates :user_id,
       :presence => true
  validates :shopname,
       :presence => true,
	   :length => {:maximum => 20}
  validates :url,
       :presence => true,
       :length => {:maximum => 255}
   validates :genre_ids,
       :presence => true
end
