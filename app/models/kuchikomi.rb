class Kuchikomi < ActiveRecord::Base
  attr_accessible :hyouka, :kuchi_person_name, :kuchi_text, :shop_id
  belongs_to :shop

  validates :kuchi_person_name,
  	:presence => true,
	:length => {:maximum => 8}
  validates :kuchi_text,
 	:presence => true,
 	:length => {:maximum => 180}
end
