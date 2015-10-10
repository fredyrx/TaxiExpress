json.array!(@address_favorites) do |address_favorite|
  json.extract! address_favorite, :id, :name, :user_id, :address_id
  json.url address_favorite_url(address_favorite, format: :json)
end
