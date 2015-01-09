def greet
  "Hello World"
end

def greet_person(name)
  "Hello #{name}"
end

greet #=> 'Hello World'
greet_person('john') #=> 'Hello john'

def greet_me(name = 'Justin')
  "hi #{name}"
end

greet_me #=> 'hi Justin'
greet_me('steve') #=> 'hi steve'


def add_a_and_b(a, b)
  a + b
end

add_a_and_b(2, 4) # => 6

def square(x)
  x * x
end

square(12) #=> 144

# Assignment Time
#
# Create 3 methods.
#One that takes no arguments, one that takes 1, and one that takes 2 with a default.
# ex> honk_horn, turn('left'), stop('fast', 'later'), stop('slow')

def honk_horn
  'beep beep'
end

def turn(direction)
  "Car turns #{direction}"
end

def stop(speed, time = 'now')
  "Stop the car #{speed} and #{time}!"
end

honk_horn #=> 'beep beep'

turn('left') #=> 'Car turns left'

stop('slowly') #=> 'Stop the car slowly and now!'
stop('fast', 'eventually') #=> 'Stop the car fast and eventually!'

