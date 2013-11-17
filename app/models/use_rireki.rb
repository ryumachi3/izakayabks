class UseRireki < ActiveRecord::Base
  attr_accessible :shop_id, :use_day, :use_event, :use_number
  belongs_to :shop
  accepts_nested_attributes_for :shop

  validates :use_day,
  	:presence => true
  validates :use_event,
	:presence => true,
  	:length => {:maximum => 28}
  validates :use_number,
	:presence => true
end
