
def get(prompt:)
  print prompt + " "
  gets.chomp
end


puts "Hello World"

name = get(prompt: 'What is your name?')
age  = get(prompt: 'What is your age?')

puts "Hello #{name}, you must be #{age} years old"

