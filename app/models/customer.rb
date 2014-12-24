class Customer < ActiveRecord::Base
  has_many :customer_service_item_ships
  has_many :service_items, through: :customer_service_item_ships
  has_many :customer_service_station_ships
  has_many :service_stations, through: :customer_service_station_ships
end
