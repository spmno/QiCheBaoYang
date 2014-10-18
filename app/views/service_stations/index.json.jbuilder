json.array!(@service_stations) do |service_station|
  json.extract! service_station, :id, :name, :address, :longitude, :latitude
  json.url service_station_url(service_station, format: :json)
end
