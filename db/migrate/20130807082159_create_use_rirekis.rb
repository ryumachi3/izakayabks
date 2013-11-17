class CreateUseRirekis < ActiveRecord::Migration
  def change
    create_table :use_rirekis do |t|
      t.integer :shop_id
      t.date :use_day
      t.string :use_event
      t.integer :use_number

      t.timestamps
    end
  end
end
