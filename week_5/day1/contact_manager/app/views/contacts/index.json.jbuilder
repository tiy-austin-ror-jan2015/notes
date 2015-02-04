json.array!(@contacts) do |contact|
  json.extract! contact, :id, :first_name, :last_name, :age, :phone_number, :email, :twitter, :github
  json.url contact_url(contact, format: :json)
end
