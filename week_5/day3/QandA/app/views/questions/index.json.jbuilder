json.array!(@questions) do |question|
  json.extract! question, :id, :title, :body, :tags
  json.url question_url(question, format: :json)
end
