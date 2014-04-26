class CreateGenresOsusumes < ActiveRecord::Migration
  def change
    create_table :genres_osusumes, :id => false  do |t|
      t.integer :shop_id
      t.integer :genre_id

    end
  end
end
