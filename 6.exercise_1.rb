def counter(start=0, increment=1)
  start -=increment
  lambda do   
    start += increment
  end
end

result = counter(0, 3)

puts result.call
puts result.call
puts result.call
puts result.call


puts "#more numbers"


result = counter(1, 2)

puts result.call
puts result.call
puts result.call
puts result.call