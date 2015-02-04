json.array!(@courses) do |course|
  json.extract! course, :id, :title, :reqs, :enrollment_cap
  json.url course_url(course, format: :json)
end
