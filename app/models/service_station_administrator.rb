class ServiceStationAdministrator < ActiveRecord::Base
  has_many :service_station_administrator_service_station_ships
  has_many :service_stations, through: :service_station_administrator_service_station_ships
end
