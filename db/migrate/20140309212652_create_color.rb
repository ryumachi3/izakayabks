class CreateColor < ActiveRecord::Migration
  def up
	  create_table :colors  do |t|
   	    t.string :color

	  end
  end

  def down
  end
end
