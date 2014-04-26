class User < ActiveRecord::Base
  attr_accessible :user_name, :color

  validates :user_name,
    :presence => true,
	:length => {:maximum => 8}
  validates :color,
    :presence => true
end
