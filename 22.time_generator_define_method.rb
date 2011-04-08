class MyClass
  def self.create_multiplier(factor)
    define_method("times_#{factor}") do |param|
      param * factor
    end
  end
end


MyClass.create_multiplier(2)
m = MyClass.new

puts m.times_2(3)
puts m.times_2(4)

MyClass.create_multiplier(4)

puts m.times_4("hall! o! ")