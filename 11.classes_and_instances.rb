class MyClass
  @iv = 123
  puts "In class definition, @iv = #{@iv}"
  def self.class_method
    puts "In class method, @iv = #{@iv}"
  end
  def instance_method
    puts "self = #{self}"
    puts "in instance method, @iv = #{@iv}"
  end
end
MyClass.class_method
MyClass.new.instance_method