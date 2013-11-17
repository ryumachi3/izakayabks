class ChangeMoyoriStationIdToShops < ActiveRecord::Migration
  def up
	rename_column :shops, :station_id, :moyori_station_id
  end

  def down
	rename_column :shops, :moyori_station_id, :station_id
  end
end
