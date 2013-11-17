class CreateGenresShops < ActiveRecord::Migration
  def change
    create_table :genres_shops, :id => false do |t|
      t.integer :shop_id
      t.integer :genre_id

    end
  end
end
