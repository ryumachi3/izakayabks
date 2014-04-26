class ChangeShopidToTsubuyakis < ActiveRecord::Migration
  def up
    rename_column :Tsubuyakis, :shop_id, :osusume_id
  end

  def down
    rename_column :Tsubuyakis, :osusume_id, :shop_id
  end
end
