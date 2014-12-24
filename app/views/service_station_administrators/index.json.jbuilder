json.array!(@service_station_administrators) do |service_station_administrator|
  json.extract! service_station_administrator, :id, :service_station_id, :user_id
  json.url service_station_administrator_url(service_station_administrator, format: :json)
end
