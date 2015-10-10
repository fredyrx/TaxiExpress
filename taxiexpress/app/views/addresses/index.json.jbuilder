json.array!(@addresses) do |address|
  json.extract! address, :id, :name, :latitude, :longitude
  json.url address_url(address, format: :json)
end
