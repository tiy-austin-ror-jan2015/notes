class StudentManager
  attr_accessor :students

  def initialize(students = [])
    @students = students
  end

  def total_students
    @students.length
  end

  def add(student)
    @students.push(student)
  end

  def average_gpa
    (students.map(&:gpa).reduce(:+) / total_students).round(2)
  end

  def highest_gpa
    students.max_by(&:gpa)
  end

  def lowest_gpa
    students.min_by(&:gpa)
  end

  def rubyists
    students_for_course('ruby')
  end

  def javascripters
    puts 'we weep for you'
    students_for_course('js')
  end

  def designers
    students_for_course('design')
  end

  def longest_name
    students.max_by { |student| student.name.length }
  end

  def average_gpa_for_course(name)
    (students_for_course(name).map(&:gpa).reduce(:+) / students_for_course(name).length).round(2)
  end

  def unique_names
    students.uniq { |student| student.name }
  end

  private
  def students_for_course(name)
    students.select { |student| student.course == name }
  end

end

class Student
  attr_accessor :name, :course, :gpa

  def initialize(name: '', course: '', gpa: rand(1.0..5.0).round(2))
    @name   = name
    @course = course
    @gpa    = gpa
  end
end


class Filtering
  def self.run
    katlyn = StudentManager.new

    katlyn.add(Student.new({name: 'Buck',     course: 'ruby'}))

    katlyn.add(Student.new({name: 'Jacob',    course: 'ruby'}))
    katlyn.add(Student.new({name: 'Kate',     course: 'ruby'}))
    katlyn.add(Student.new({name: 'Justin',   course: 'ruby'}))

    katlyn.add(Student.new({name: 'Drew',     course: 'ruby'}))
    katlyn.add(Student.new({name: 'Rob',      course: 'ruby'}))
    katlyn.add(Student.new({name: 'Roel',     course: 'ruby'}))

    katlyn.add(Student.new({name: 'Alex',     course: 'js'  }))
    katlyn.add(Student.new({name: 'Gabriel',  course: 'js'  }))
    katlyn.add(Student.new({name: 'Hugh',     course: 'js'  }))
    katlyn.add(Student.new({name: 'Jacob',    course: 'js'  }))
    katlyn.add(Student.new({name: 'Paul',     course: 'js'  }))
    katlyn.add(Student.new({name: 'Travis',   course: 'js'  }))
    katlyn.add(Student.new({name: 'Dan',      course: 'js'  }))
    katlyn.add(Student.new({name: 'Erica',    course: 'js'  }))
    katlyn.add(Student.new({name: 'Charlie',  course: 'js'  }))

    katlyn.add(Student.new({name: 'Brandon',  course: 'design' }))
    katlyn.add(Student.new({name: 'Xinyu',    course: 'design' }))
    katlyn.add(Student.new({name: 'Jess',     course: 'design' }))
    katlyn.add(Student.new({name: 'Dawn',     course: 'design'  }))
    # I want to know
    # - student with highest gpa
    # - student with lowest gpa
    # - be able to get all ruby students in their own class
    # - be able to see who has the longest name
    # - get the average gpa of the entire class and the individual classes
    # - Only get students with unique names (for group projects of course)
    #--- Add all of these as methods on StudentManager Class Above ---
    puts katlyn.highest_gpa
    puts katlyn.lowest_gpa
    require 'pry'; binding.pry
  end
end

Filtering.run
