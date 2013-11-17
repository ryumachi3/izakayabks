class CreateOsusumePeople < ActiveRecord::Migration
  def change
    create_table :osusume_people, :id => false  do |t|
      t.string :osusume_person_name

      t.timestamps
    end
  end
end
