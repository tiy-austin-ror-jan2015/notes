class Car
  def turn_on
    start_engine
  end

  private

  def start_engine
    puts "vrrmmmmm!".upcase
  end
end

class ToyCar < Car
  def push_start
    start_engine
  end
end

mycar = Car.new
mycar.start_engine
mycar.turn_on


toy = ToyCar.new
toy.push_start
toy.engine_start
toy.start_engine

