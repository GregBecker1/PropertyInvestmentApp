json.array!(@users) do |user|
  json.extract! user, :id, :firstname, :lastname, :email, :phone
  json.url user_url(user, format: :json)
end
