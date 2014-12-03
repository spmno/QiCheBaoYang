json.array!(@maintenance_goods) do |maintenance_good|
  json.extract! maintenance_good, :id, :name, :photo, :link
  json.url maintenance_good_url(maintenance_good, format: :json)
end
