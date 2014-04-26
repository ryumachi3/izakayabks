class CreateColor2 < ActiveRecord::Migration
  def up
 	 create_table :colors, :id => false   do |t|
  	      t.string :color

 	 end
  end
  def down
  end
end
