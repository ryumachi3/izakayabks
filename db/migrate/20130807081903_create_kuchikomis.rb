class CreateKuchikomis < ActiveRecord::Migration
  def change
    create_table :kuchikomis do |t|
      t.string :shop_id
      t.string :kuchi_person_name
      t.integer :hyouka
      t.text :kuchi_text

      t.timestamps
    end
  end
end
