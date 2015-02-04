puts 'hi'

Kernel.puts 'hi'

def foo
  puts 'bar'
end

foo
Kernel.send(:foo)

puts "Ancestors of String: #{String.ancestors}"
puts "Ancestors of Fixnum: #{Fixnum.ancestors}"
puts "Ancestors of Float: #{Float.ancestors}"
puts "Ancestors of Class: #{Class.ancestors}"

