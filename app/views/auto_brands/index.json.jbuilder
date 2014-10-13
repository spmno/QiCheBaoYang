json.array!(@auto_brands) do |auto_brand|
  json.extract! auto_brand, :id, :name, :auto_brand_photo
  json.url auto_brand_url(auto_brand, format: :json)
end
