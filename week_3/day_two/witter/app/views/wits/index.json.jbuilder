json.array!(@wits) do |wit|
  json.extract! wit, :id
  json.extract! wit, :message
  json.extract! wit, :created_at
  json.url wit_url(wit, format: :json)
end
