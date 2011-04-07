def loop_while(condition)
  if condition
    yield
    retry
  end
end


i = 0
loop_while i < 3 do
  puts i
  i += 1
end