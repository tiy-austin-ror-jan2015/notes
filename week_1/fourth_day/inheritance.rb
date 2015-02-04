class Animal
  def initialize
  end

  def speak
    puts "ggggrrrrrssssmmmm"
  end
end

mynimal = Animal.new
mynimal.speak

class Cat < Animal
end

mittens = Cat.new
mittens.speak

class Kitten < Cat
  def speak
    puts 'mew'
  end
end

bb = Kitten.new
bb.speak

class Dog < Animal
  def initialize
    @color = 'blue'
  end

  def color
    @color
  end
end

fido = Dog.new
fido.color
fido.speak

class Puppy < Dog
  def initialize
    super #What is super doing here? What would happen to our puppies if it were not here?
  end

  def speak
    super #What would happen if super was not here?
    puts "* pees on floor * "
  end
end

pup = Puppy.new
pup.color
pup.speak


puts "Puppy Ancestors : #{Puppy.ancestors}"
