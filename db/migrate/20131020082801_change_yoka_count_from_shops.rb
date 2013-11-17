class ChangeYokaCountFromShops < ActiveRecord::Migration
  def up
  	change_column :shops, :yosa_count, :integer, {:null => false, :default => 0}
  	change_column :shops, :yoka_count, :integer, {:null => false, :default => 0}
  end

  def down
	change_column :shops, :yosa_count, :integer 
	change_column :shops, :yoka_count, :integer
  end
end
