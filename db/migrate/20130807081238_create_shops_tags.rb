class CreateShopsTags < ActiveRecord::Migration
  def change
    create_table :shops_tags, :id => false do |t|
      t.string :tag
    end
  end
end
