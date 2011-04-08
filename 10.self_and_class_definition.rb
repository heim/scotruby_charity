class Test
  puts "In the definition of class Test"
  puts "self = #{self}"
  puts "Class of self = #{self.class}"
  
  def self.foo
    puts "in foo self = #{self}"
    puts "in foo self = #{self.class}"
  end
end

puts "Top level, self=#{self}"

Test.foo