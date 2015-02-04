json.array!(@assignments) do |assignment|
  json.extract! assignment, :id, :title, :grade, :completed, :late
  json.url assignment_url(assignment, format: :json)
end
