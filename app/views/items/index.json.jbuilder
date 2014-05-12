json.array!(@items) do |item|
  json.extract! item, :id, :menu_id, :name, :description, :spicy, :image, :category_id
  json.url item_url(item, format: :json)
end
