class ServiceStation < ActiveRecord::Base
  has_many :customer_service_station_ships
  has_many :customers, through: :customer_service_station_ships
  has_many :service_station_administrator_service_station_ships
  has_many :service_station_administrators, through: :service_station_administrator_service_station_ships
  self.rgeo_factory_generator = RGeo::Geos.factory_generator
  set_rgeo_factory_for_column(:location, RGeo::Geographic.spherical_factory(:srid => 4326))
end
