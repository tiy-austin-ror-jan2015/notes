#Question 1.

#Fix the code so it runs
def multiply(a, b)
  a * b
end
#-----------------------------------------------------

#Question 2

#Fix the code so the method greet runs correctly
class Person
  def initialize(name)
    @name = name
  end

  def greet(other_name)
    "Hi #{other_name}, my name is #{@name}"
  end
end

#-----------------------------------------------------

#Question 3.

# Haskell has some useful functions for dealing with lists:

# $ ghci
# GHCi, version 7.6.3: http://www.haskell.org/ghc/  :? for help
# λ head [1,2,3,4,5]
# 1
# λ tail [1,2,3,4,5]
# [2,3,4,5]
# λ init [1,2,3,4,5]
# [1,2,3,4]
# λ last [1,2,3,4,5]
# 5
# Your job is to implement these functions in RUBY. Make sure it doesn't edit the array; that would cause problems! Here's a cheat sheet:

# | HEAD | <----------- TAIL ------------> |
# [  1,  2,  3,  4,  5,  6,  7,  8,  9,  10]
# | <----------- INIT ------------> | LAST |

# head [x] = x
# tail [x] = []
# init [x] = []
# last [x] = x
# Here's how I expect the functions to be called in your language:

# head([1,2,3,4,5]) => 1
# tail([1,2,3,4,5]) => [2,3,4,5]
# init([1,2,3,4,5]) => [1,2,3,4]
# last([1,2,3,4,5)] => 5

def head(array)
  array.first
end

def init(array)
  array[0..-2]
end

def tail(array)
  array.drop(1)
end

def last(array)
  array.last
end
#-----------------------------------------------------

#Question 4.

# Complete the keysAndValues function so that it takes in an object and returns the keys and values as separate arrays.
# Example:
# keysAndValues({a: 1, b: 2, c: 3}) # should return [[:a, :b, :c], [1, 2, 3]]

def keysAndValues(data)
  [data.keys, data.values]
end

# Hint: If you are stuck, you should look at the ruby documentation to see how to return the keys and values from a Hash.

#-----------------------------------------------------

#Question 5.

#Square every digit of a number, and return the new number as an integer
#For example square_digits(9119) #-> 811181
# 9119 = 9, 1, 1, 9
# squares = square(9), square(1), square(1), square(9)
# new_num = squares.as_single_number

def square_digits(num)
  num.to_s.chars.map(&:to_i).map { |n| n * n }.join
end


