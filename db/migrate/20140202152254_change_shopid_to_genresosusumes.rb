class ChangeShopidToGenresosusumes < ActiveRecord::Migration
  def up
	rename_column :genres_osusumes, :shop_id, :osusume_id
  end

  def down
	rename_column :genres_osusumes, :osusume_id, :shop_id
  end
end
