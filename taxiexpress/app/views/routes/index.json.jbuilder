json.array!(@routes) do |route|
  json.extract! route, :id, :price
  json.url route_url(route, format: :json)
end
