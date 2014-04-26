class RemoveTsubuPersonName < ActiveRecord::Migration
  def up
     remove_column :tsubuyakis, :osusume_person_name
	 add_column :tsubuyakis, :user_id, :integer
  end

  def down
  end
end
