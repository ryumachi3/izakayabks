class OsusumesTag < ActiveRecord::Base
  attr_accessible :shop_id, :tag
  belongs_to :osusume
  accepts_nested_attributes_for :osusume
end
