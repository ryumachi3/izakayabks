class CreateMoyoriStations < ActiveRecord::Migration
  def change
    create_table :moyori_stations do |t|
      t.string :stationname

      t.timestamps
    end
  end
end
