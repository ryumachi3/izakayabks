class Genre < ActiveRecord::Base
  attr_accessible :genre_name
  has_many :genres_shops
  has_many :shops,:through => :genres_shops
end
