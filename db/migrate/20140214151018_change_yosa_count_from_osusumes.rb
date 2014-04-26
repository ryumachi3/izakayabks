class ChangeYosaCountFromOsusumes < ActiveRecord::Migration
  def up
    change_column :osusumes, :yosa_count, :integer, {:null => false, :default => 0}
  end

  def down
    change_column :osusumes, :yosa_count, :integer
  end
end
