class CreateCustomerServiceStationShips < ActiveRecord::Migration
  def change
    create_table :customer_service_station_ships do |t|
      t.integer :customer_id
      t.integer :service_station_id

      t.timestamps
    end
  end
end
