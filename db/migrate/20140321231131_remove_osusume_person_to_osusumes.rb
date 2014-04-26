class RemoveOsusumePersonToOsusumes < ActiveRecord::Migration
  def up
  	remove_column :osusumes, :osusume_person
	add_column :osusumes, :user_id, :integer
  end

  def down
  end
end
