json.array!(@cookie_types) do |cookie_type|
  json.extract! cookie_type, :name, :price
  json.url cookie_type_url(cookie_type, format: :json)
end
