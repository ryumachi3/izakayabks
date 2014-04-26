class DropColor < ActiveRecord::Migration
  def up
  	drop_table :colors
  end

  def down
  end
end
