json.array!(@service_items) do |service_item|
  json.extract! service_item, :id, :name, :duration1, :duration2, :mile
  json.url service_item_url(service_item, format: :json)
end
