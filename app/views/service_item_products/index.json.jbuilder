json.array!(@service_item_products) do |service_item_product|
  json.extract! service_item_product, :id, :name, :service_item_id
  json.url service_item_product_url(service_item_product, format: :json)
end
