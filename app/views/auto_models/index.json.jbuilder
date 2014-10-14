json.array!(@auto_models) do |auto_model|
  json.extract! auto_model, :id, :name, :auto_model_photo, :auto_brand_id
  json.url auto_model_url(auto_model, format: :json)
end
