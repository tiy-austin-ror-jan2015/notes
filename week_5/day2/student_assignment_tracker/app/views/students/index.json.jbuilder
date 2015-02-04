json.array!(@students) do |student|
  json.extract! student, :id, :name, :course
  json.url student_url(student, format: :json)
end
