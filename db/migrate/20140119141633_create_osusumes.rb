class CreateOsusumes < ActiveRecord::Migration
  def change
    create_table :osusumes do |t|
      t.string :url
      t.string :shopname
      t.string :station_id
      t.integer :yosa_count
      t.string :osusume_person
      t.text :memo
      t.integer :kojin_hyouka

      t.timestamps
    end
  end
end
