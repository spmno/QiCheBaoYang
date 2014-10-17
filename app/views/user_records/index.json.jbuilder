json.array!(@user_records) do |user_record|
  json.extract! user_record, :id, :user_id, :auto_model_id
  json.url user_record_url(user_record, format: :json)
end
