json.array!(@service_item_product_auto_model_ships) do |service_item_product_auto_model_ship|
  json.extract! service_item_product_auto_model_ship, :id, :service_item_product_id, :auto_model_id
  json.url service_item_product_auto_model_ship_url(service_item_product_auto_model_ship, format: :json)
end
