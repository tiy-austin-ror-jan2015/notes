words = %w(apple pear iron yard the outdoors pie rocks sink follow forest)

def name_gen(words, length = 2)
  "#{words.sample(length).join("-")}-#{rand(1000...10000).to_s}"
end

puts name_gen(words, 4)
