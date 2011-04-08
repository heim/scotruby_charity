
def create_multiplier(factor)
  ->param { param * factor }
end



times_2 = create_multiplier(2)


puts times_2.call(3)
puts times_2.call(4)


times_3 = create_multiplier(3)

puts times_3.call("Ho! ")


p Object.private_instance_methods.grep /times/