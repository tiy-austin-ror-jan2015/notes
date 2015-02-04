module AssignmentsHelper
	def student_collection
		Student.select('id', 'name')
	end
end
