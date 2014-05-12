json.array!(@users) do |user|
  json.extract! user, :id, :name, :facebook_name, :facebook_id, :token
  json.url user_url(user, format: :json)
end
