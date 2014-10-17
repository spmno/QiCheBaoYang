json.array!(@auto_maintenances) do |auto_maintenance|
  json.extract! auto_maintenance, :id
  json.url auto_maintenance_url(auto_maintenance, format: :json)
end
