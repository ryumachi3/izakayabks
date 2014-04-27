class GenresOsusume < ActiveRecord::Base
  attr_accessible :genre_id, :shop_id
  belongs_to :genre
  belongs_to :osusume
end
