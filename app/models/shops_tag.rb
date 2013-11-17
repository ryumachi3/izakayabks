class ShopsTag < ActiveRecord::Base
  attr_accessible :tag
  belongs_to :shop
  accepts_nested_attributes_for :shop
end
