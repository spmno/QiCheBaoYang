class ServiceStationAdministratorServiceStationShip < ActiveRecord::Base
  belongs_to :service_station
  belongs_to :service_station_administrator
end
