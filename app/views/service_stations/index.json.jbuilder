json.array!(@service_stations) do |service_station|
  json.extract! service_station, :id, :name, :address, :location
end
