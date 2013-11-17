class AddShopToUseRireki < ActiveRecord::Migration
  def change
    add_column :use_rirekis, :shop_id, :integer
 	add_index :use_rirekis, :shop_id
  end
end
