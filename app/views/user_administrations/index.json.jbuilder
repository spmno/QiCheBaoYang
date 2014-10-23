json.array!(@user_administrations) do |user_administration|
  json.extract! user_administration, :id
  json.url user_administration_url(user_administration, format: :json)
end
