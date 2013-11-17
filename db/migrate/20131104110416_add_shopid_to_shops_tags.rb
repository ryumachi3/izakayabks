class AddShopidToShopsTags < ActiveRecord::Migration
  def change
  	add_column :shops_tags, :shop_id, :integer
  end
end
