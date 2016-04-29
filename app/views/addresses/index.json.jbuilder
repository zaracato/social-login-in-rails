json.array!(@addresses) do |address|
  json.extract! address, :id, :line1, :line2, :line3, :state, :city, :postal_code, :country_code
  json.url address_url(address, format: :json)
end
