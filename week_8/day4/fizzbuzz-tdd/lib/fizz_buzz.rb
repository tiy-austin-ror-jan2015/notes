class FizzBuzz
  def run(n)
    return 'fizzbuzz' if (n % 15).zero?
    return 'buzz' if (n % 5).zero?
    return 'fizz' if (n % 3).zero?
    n
  end
end

fb = FizzBuzz.new
(1..100).each do |n|
  puts fb.run(n)
end
