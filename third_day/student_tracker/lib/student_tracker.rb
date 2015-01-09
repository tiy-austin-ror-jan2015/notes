class StudentTracker
  attr_accessor :students

  def initialize
    @students = []
    add_students
  end

  def add_students
    File.open('data/students.txt', 'r').read.each_line do |student_name|
      @students << Student.new(student_name.chomp)
    end
  end

  def print_students
    students.each do |student|
      puts student
    end
  end
end

