json.array!(@restaurants) do |restaurant|
  json.extract! restaurant, :id, :price, :type, :feature, :location, :picture, :name, :website, :open, :close, :capacity
  json.url restaurant_url(restaurant, format: :json)
end
