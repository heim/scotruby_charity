def my_method(p1, p2)
  local_var = 99
  binding
end


methods_binding = my_method("cat", "dog")

puts eval("p1", methods_binding)


puts methods_binding.eval("p2")
puts methods_binding.eval("local_var")