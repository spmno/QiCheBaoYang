class CreateServiceStations < ActiveRecord::Migration
  def change
    create_table :service_stations do |t|
      t.string :name
      t.string :address
      t.float :longitude
      t.float :latitude

      t.timestamps
    end
  end
end
