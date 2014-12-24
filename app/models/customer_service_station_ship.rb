class CustomerServiceStationShip < ActiveRecord::Base
  belongs_to :customer
  belongs_to :service_station
end
