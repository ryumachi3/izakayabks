class ChangeStationidToOsusumes < ActiveRecord::Migration
  def up
  	rename_column :osusumes, :station_id, :moyori_station_id
  end

  def down
  	rename_column :osusumes, :moyori_station_id, :station_id
  end
end
