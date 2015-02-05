module CoursesHelper
  def location_collection
    Location.select('id', 'name')
  end
end
