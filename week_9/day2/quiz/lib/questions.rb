#Question 1. Broken Code

#There is an error in the following code.  Fix it!

items = Array.new
items.push({:a => "b", :c => "d"})

#-------------------------------------------------#
#Question 2. Regular Ball Super Ball

#Create a class Ball.

#Ball objects should accept one argument for "ball type" when instantiated.

#If no arguments are given, ball objects should instantiate with a "ball type" of "regular."
# write your class here


# examples:
# ball1 = Ball.new
# ball2 = Ball.new "super"
# ball1.ball_type  #=> "regular"
# ball2.ball_type  #=> "super"

#-------------------------------------------------#
#Question 3. Sum Array

#Write a method sum that takes an array of numbers and returns the sum of the numbers.
#These may be integers or decimals. The numbers can also be negative. If the array does not contain any numbers
#then you should return 0.

def sum_array(arr)
end

sum_array([]) == 0
sum_array([1, 5.2, 4, 0, -1]) == 9.2

#-------------------------------------------------#
#Question 4. One True Value

#Create an any? method that accepts an array and a block, and returns true if the block returns true for any
#item in the array. If the array is empty, the method should return false.

#If you get stuck, you can read up here:

#http://www.rubycuts.com/enum-any

def any?(arr, &block)
end

#--------------------------------------------------#
#Question 5. Vampire Numbers

#6 * 21 = 126
# 6 and 21 would be valid 'fangs' for a vampire number as the
# digits 6, 1, and 2 are present in both the product and multiplicands

#10 * 11 = 110
# 110 is not a vampire number since there are three 1's in the
# multiplicands, but only two 1's in the product

def vamp_numbers(arr)
  arr.join.chars.sort == arr.reduce(:*).to_s.chars.sort
end

vamp_numbers([6,21]) == true
vamp_numbers([10,11]) == false
