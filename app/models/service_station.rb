class ServiceStation < ActiveRecord::Base
  has_many :customer_service_item_ships
  has_many :customers, through: :customer_service_item_ships
  self.rgeo_factory_generator = RGeo::Geos.factory_generator
  set_rgeo_factory_for_column(:location, RGeo::Geographic.spherical_factory(:srid => 4326))
end
