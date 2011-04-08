def make_a_class_named(name)
  k = Class.new do
    define_method(:meth) do |param|
      puts "Got #{param}"
    end
  end
  Object.const_set(name, k)
end


make_a_class_named("Bjarne")

b = Bjarne.new
b.meth("heisann")





exit
k = Class.new do
  define_method(:meth) do |param|
    puts "Got #{param}"
  end
end

Object.const_set("Andreas", k)



a = Andreas.new
a.meth("hei")


exit
p String.class
x = Class.new
Heim = x

p Heim

p x


