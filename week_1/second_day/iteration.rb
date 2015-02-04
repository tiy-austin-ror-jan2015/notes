fruits = ['apple', 'pear', 'guava', 'mango', 'bannannanan']

fruits.each do |fruit|
  puts fruit
end

fruits.each do |f|
  puts "My favorite is #{f} or..."
end

fruits = ['apple', 'bananananana', 'pear', '*berry', 'kiwi']

new_fruit = []
fruits.each do |fruit|
  new_fruit << fruit.upcase
end

puts new_fruit

fruits.map do |fruit|
  fruit.upcase
end

number = 0
loop do
  puts number
  number += 1
  break if number > 100
end

number = 0
while number < 100
  print number
  number += 1
end

