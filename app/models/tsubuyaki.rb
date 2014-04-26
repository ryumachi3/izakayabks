class Tsubuyaki < ActiveRecord::Base
  attr_accessible :shop_id, :user_id, :tsubu_text
  belongs_to :osusume
  belongs_to :user

  validates :user_id,
    :presence => true
  validates :tsubu_text,
    :presence => true,
    :length => {:maximum => 180}
end
