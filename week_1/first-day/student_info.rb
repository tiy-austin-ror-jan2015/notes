class Student
  attr_accessor :name
  attr_accessor :age
  attr_accessor :fav_lang
  attr_accessor :fav_drink
  attr_accessor :food
  def print
    puts name
    puts "Student is #{age}"
    puts "Favorite Language: #{fav_lang}"
    puts "Fav Food: #{food}"
    puts "Fav Drink: #{fav_drink}"
  end
end

def get_with_prompt(prompt)
  print prompt
  gets.chomp
end

def get_student(students)
  student = Student.new

  puts "new student".upcase

  student.name     = get_with_prompt("What is your name: ")
  student.age      = get_with_prompt("What is your age: ")
  student.fav_lang = get_with_prompt("What is your favorite language: ")
  student.food     = get_with_prompt("What is your favorite food: ")

  puts
  response = get_with_prompt("Add additional student? (y/n) ")

  students.push(student)

  get_student(students) if response.downcase =~ /y|yes/
end

def print_line(length = 20, char = '-')
  puts char * length
end

puts "welcome to student info generator".upcase
puts

students = []
get_student(students)

puts "STUDENTS"
print_line

sorted_students = students.sort_by { |student| student.name }.reverse

sorted_students.each do |student|
  student.print
  print_line
end
