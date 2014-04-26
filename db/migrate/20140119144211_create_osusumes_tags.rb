class CreateOsusumesTags < ActiveRecord::Migration
  def change
    create_table :osusumes_tags, :id => false  do |t|
      t.string :tag
      t.integer :shop_id

    end
  end
end
