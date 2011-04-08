animal = "cat"

def animal.speak
  puts "meow"
end

def animal.apnaclass
  self.class
end

p animal.apnaclass

animal.speak


dog = animal.dup

# dog.speak blows up