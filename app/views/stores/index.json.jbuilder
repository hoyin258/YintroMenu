json.array!(@stores) do |store|
  json.extract! store, :id, :name, :phone, :address, :latitude, :longitude, :open_hours, :description, :image
  json.url store_url(store, format: :json)
end
