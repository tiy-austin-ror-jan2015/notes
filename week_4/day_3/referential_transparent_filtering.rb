module StudentManager
  extend self

  def total(students)
    students.length
  end

  def add(students, student)
    students.push(student)
  end

  def average_gpa(students)
    (students.map(&:gpa).reduce(:+) / total(students)).round(2)
  end

  def highest_gpa(students)
    students.max_by(&:gpa)
  end

  def lowest_gpa(students)
    students.min_by(&:gpa)
  end

  def rubyists(students)
    students_for_course(students, 'ruby')
  end

  def javascripters(students)
    students_for_course(students, 'js')
  end

  def designers(students)
    students_for_course(students, 'design')
  end

  def longest_name(students)
    students.max_by { |student| student.name.length }
  end

  def average_gpa_for_course(students, name)
    (students_for_course(students, name).map(&:gpa).reduce(:+) / students_for_course(students, name).length).round(2)
  end

  def unique_names(students)
    students.uniq { |student| student.name }
  end

  private
  def students_for_course(students, name)
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
    students = [
      Student.new({name: 'Buck',     course: 'ruby'}),
      Student.new({name: 'Jacob',    course: 'ruby'}),
      Student.new({name: 'Kate',     course: 'ruby'}),
      Student.new({name: 'Justin',   course: 'ruby'}),
      Student.new({name: 'Drew',     course: 'ruby'}),
      Student.new({name: 'Rob',      course: 'ruby'}),
      Student.new({name: 'Roel',     course: 'ruby'}),
      Student.new({name: 'Alex',     course: 'js'  }),
      Student.new({name: 'Gabriel',  course: 'js'  }),
      Student.new({name: 'Hugh',     course: 'js'  }),
      Student.new({name: 'Jacob',    course: 'js'  }),
      Student.new({name: 'Paul',     course: 'js'  }),
      Student.new({name: 'Travis',   course: 'js'  }),
      Student.new({name: 'Dan',      course: 'js'  }),
      Student.new({name: 'Erica',    course: 'js'  }),
      Student.new({name: 'Charlie',  course: 'js'  }),
      Student.new({name: 'Brandon',  course: 'design'}),
      Student.new({name: 'Xinyu',    course: 'design'}),
      Student.new({name: 'Jess',     course: 'design'}),
      Student.new({name: 'Dawn',     course: 'design'})
    ]
    # I want to know
    # - student with highest gpa
    # - student with lowest gpa
    # - be able to get all ruby students in their own class
    # - be able to see who has the longest name
    # - get the average gpa of the entire class and the individual classes
    # - Only get students with unique names (for group projects of course)
    #--- Add all of these as methods on StudentManager Class Above ---
    require 'pry'; binding.pry
  end
end

Filtering.run
