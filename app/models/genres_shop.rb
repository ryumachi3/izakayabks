class GenresShop < ActiveRecord::Base
  attr_accessible :genre_id, :shop_id
  belongs_to :genre
  belongs_to :shop
end
