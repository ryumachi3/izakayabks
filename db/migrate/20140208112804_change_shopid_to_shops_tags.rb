class ChangeShopidToShopsTags < ActiveRecord::Migration
  def up
  	rename_column :osusumes_tags, :shop_id, :osusume_id
  end

  def down
	rename_column :osusumes_tags, :osusume_id, :shop_id  
  end
end
