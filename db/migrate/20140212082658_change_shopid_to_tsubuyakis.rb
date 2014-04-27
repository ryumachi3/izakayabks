class ChangeShopidToTsubuyakis < ActiveRecord::Migration
  def up
    rename_column :tsubuyakis, :shop_id, :osusume_id
  end

  def down
    rename_column :tsubuyakis, :osusume_id, :shop_id
  end
end
