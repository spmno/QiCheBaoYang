json.array!(@main_pages) do |main_page|
  json.extract! main_page, :id
  json.url main_page_url(main_page, format: :json)
end
