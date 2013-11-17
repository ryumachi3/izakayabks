class AddHeikinHyoukaToShops < ActiveRecord::Migration
  def self.up
    add_column :shops, :heikin_hyouka, :float
  end
  def self.down
	remove_column :shops, :heikin_hyouka
  end
end
