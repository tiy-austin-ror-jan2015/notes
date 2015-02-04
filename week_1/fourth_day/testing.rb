#This is my 'production code'
def say_hello
  "goodbye"
end


#This is my 'test code'
#This is not an actual test, but this is what tests are doing 'behind the scenes' for you
def test_does_say_hello_work
  if ("hello" == say_hello)
    puts "Passed"
  else
    puts "Failed"
  end
end

puts test_does_say_hello_work
