class AddGisSupport < ActiveRecord::Migration
  def change
    remove_column :service_stations, :latitude
    remove_column :service_stations, :longitude
    add_column :service_stations, :location, :point, geographic: true
  end
end
