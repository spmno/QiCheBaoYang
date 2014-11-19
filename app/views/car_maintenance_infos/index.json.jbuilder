json.array!(@car_maintenance_infos) do |car_maintenance_info|
  json.extract! car_maintenance_info, :id, :title, :content
  json.url car_maintenance_info_url(car_maintenance_info, format: :json)
end
