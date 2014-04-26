class DropOsusumePerson < ActiveRecord::Migration
  def up
	drop_table :osusume_people
  end

  def down
     create_table :osusume_people, :id => false  do |t|
       t.string :osusume_person_name
 
       t.timestamps
     end
  end
end
