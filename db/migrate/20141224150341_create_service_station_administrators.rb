class CreateServiceStationAdministrators < ActiveRecord::Migration
  def change
    create_table :service_station_administrators do |t|
      t.integer :service_station_id
      t.integer :user_id

      t.timestamps
    end
  end
end
