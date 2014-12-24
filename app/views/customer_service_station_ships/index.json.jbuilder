json.array!(@customer_service_station_ships) do |customer_service_station_ship|
  json.extract! customer_service_station_ship, :id, :customer_id, :service_station_id
  json.url customer_service_station_ship_url(customer_service_station_ship, format: :json)
end
