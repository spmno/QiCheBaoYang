json.array!(@customer_service_item_ships) do |customer_service_item_ship|
  json.extract! customer_service_item_ship, :id, :customer_id, :service_item_id
  json.url customer_service_item_ship_url(customer_service_item_ship, format: :json)
end
