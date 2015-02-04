#How would you change this file if you were to use attr_accessor and attr_reader?
class Car

  def initialize
    @color = 'red'
    @doors = 2
    @on    = false
  end

  #This is a 'getter method'
  def color
    @color
  end

  #This is a 'setter method' because it sets the @color instance variable
  def color=(new_color)
    @color = new_color
  end

  def doors
    @doors
  end

  def turn_on
    puts 'vrmm'
    @on = true
  end

  def turn_off
    puts '*powering down*'
    @on = false
  end

  def is_on?
    @on
  end

  def paint_car(color)
    @color = color
  end

end

