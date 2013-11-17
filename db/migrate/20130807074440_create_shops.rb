class CreateShops < ActiveRecord::Migration
  def change
    create_table :shops do |t|
      t.string :url
      t.string :shopname
      t.integer :station_id
      t.integer :yoka_count
      t.integer :kaisya_flag
      t.string :osusume_person_name
      t.text :memo
      t.integer :kojin_hyouka
      t.integer :yosa_count

      t.timestamps
    end
  end
end
