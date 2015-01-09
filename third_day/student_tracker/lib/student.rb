class Student
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def to_s
    "<Student:#{name}>"
  end
end

