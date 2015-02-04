json.array!(@users) do |user|
  json.extract! user, :id, :username, :first_name, :last_name, :age, :location
  json.url user_url(user, format: :json)
end
