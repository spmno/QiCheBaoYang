json.array!(@customers) do |customer|
  json.extract! customer, :id, :user_id, :amount, :user_point
  json.url customer_url(customer, format: :json)
end
