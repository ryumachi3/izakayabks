class CreateTsubuyakis < ActiveRecord::Migration
  def change
    create_table :tsubuyakis do |t|
      t.integer :shop_id
      t.string :tsubu_person_name
      t.text :tsubu_text

      t.timestamps
    end
  end
end
