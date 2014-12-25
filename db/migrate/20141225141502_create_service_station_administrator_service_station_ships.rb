class CreateServiceStationAdministratorServiceStationShips < ActiveRecord::Migration
  def change
    create_table :service_station_administrator_service_station_ships do |t|
      t.integer :service_station_administrator_id
      t.integer :service_station_id

      t.timestamps
    end
  end
end
